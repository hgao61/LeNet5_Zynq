#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /media/adamsmith/Storage/SynologyDrive/ece5775_lab4-master/ecelinux/cnn.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
