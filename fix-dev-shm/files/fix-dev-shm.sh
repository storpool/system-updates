#!/bin/bash
set -o errexit
# unmount of redundant mounts
while [ $(findmnt -lnk /dev/shm | wc -l) -gt 1 ]
do
    umount /dev/shm
done
