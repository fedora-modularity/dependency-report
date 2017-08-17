#!/usr/bin/python2

import sys
import koji

args = sys.argv[1:]
nvrs = []
ks = koji.ClientSession('https://koji.fedoraproject.org/kojihub')
ks.multicall = True
for build in args:
    ks.getBuild(build)
ret = ks.multiCall(strict=True)
ks.multicall = True
for i in range(len(args)):
    if ret[i][0] is not None:
        if ret[i][0]['task_id'] is not None:
            ks.getTaskInfo(ret[i][0]['task_id'], request=True)
            nvrs.append(args[i])
ret = ks.multiCall(strict=True)
for i in range(len(nvrs)):
    print nvrs[i], koji.taskLabel(ret[i][0])
