#!/bin/bash
set -o errexit
# unmount of redundant mounts
number_of_mounts=$(findmnt -lnk /dev/shm | wc -l)
while [ ${number_of_mounts} -gt 1 ]
do
    umount /dev/shm
    number_of_mounts=$(findmnt -lnk /dev/shm | wc -l)
done
