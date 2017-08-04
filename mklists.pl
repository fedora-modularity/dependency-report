#!/usr/bin/perl
# ABSTRACT: Generate machine parsable package lists for depchase tooling.
use strict;
use warnings;
use autodie;
use Getopt::Std;
use List::Util 1.33 qw/none/;
use Text::CSV_XS qw/csv/;
use Data::Dumper;

my $module = undef;
my $package = undef;
my $rationale = undef;
my $arches = undef;
my $sources = undef;
my @arches = ();
my @sources = ();

my %modules;
my %packages;
# Hash table with all known arches
my %arches = map { $_ => 1 }
    qw/aarch64 armv7hl i686 ppc64 ppc64le x86_64 s390x/;

sub HELP_MESSAGE {
    print "Usage: mklists.pl -r REPO_NAME\n";
    print "Select what module lists should be generated.\n";
    exit;
}

my %opts;
getopts('r:', \%opts);
my $repo = $opts{r} or HELP_MESSAGE;


open my $fh, '<', "${repo}/README.md";
while (<$fh>) {
    chomp;
    if (/^#{3}\s\`(?<module>[^`]+)\`$/) {
        $module = $+{module};
        $package = undef;
        $modules{$module} = {};
        next;
    }
    if (/^\*\s\`(?<package>[^`]+)\`
         (\s?\(
            (?<sources>\`.+?\`)?
            (?:;\s?)?
            (?<arches>\*.+?\*)?
         \))?
         (?:,\s?(?<rationale>.*))?$/x && defined $module) {
        $package = $+{package};
        $rationale = $+{rationale} // '';
        $arches = $+{arches};
        $sources = $+{sources};
        @sources = defined $sources
            ? ( split /,\s?/, $sources =~ s/\`//gr )
            : ( $package );
        @arches = defined $arches
            ? ( split /,\s?/, $arches =~ s/^\*|\*$//gr )
            : ();
        for (@arches) {
            $arches{$_} = 1;
        }
        for (@sources) {
            $modules{$module}->{$_} = {
                rationale => $modules{$module}->{$_}->{rationale}
                    ? $modules{$module}->{$_}->{rationale} . "; ${rationale}"
                    : $rationale,
                arches => [ @arches ],
            };
        }
        $packages{$package} = {
            count => defined $packages{$package}
                     ? $packages{$package} + 1
                     : 1,
            arches => [ @arches ],
        };
    } elsif (defined $module && defined $package && ! /^$/) {
        s/^\s+|\s+$//g;
        for my $src (@sources) {
            $modules{$module}->{$src}->{rationale} .= ' '
                if $modules{$module}->{$src}->{rationale};
            $modules{$module}->{$src}->{rationale} .= $_;
        }
    } else {
        $package = undef;
        @arches = ();
        @sources = ();
    }
}
close $fh;

mkdir "modules" unless -d "modules";

for my $module (keys %modules) {
    mkdir "modules/${module}" unless -d "modules/${module}";
    for my $arch (keys %arches) {
        mkdir "modules/${module}/${arch}" unless -d "modules/${module}/${arch}";
        open $fh, '>', "modules/${module}/${arch}/toplevel-binary-packages.txt";
        for my $pkg (keys %{ $modules{$module} } ) {
            next if @{ $modules{$module}->{$pkg}->{arches} } and
                    not ($arch ~~ $modules{$module}->{$pkg}->{arches});
            print {$fh} "$pkg\n";
        }
        close $fh;
    }
}

for $module (keys %modules) {
    csv in => [
            map
            { [ $_, $modules{$module}->{$_}->{rationale} ] }
            sort keys %{ $modules{$module} }
        ],
        out => "modules/${module}/${module}.csv";
}
