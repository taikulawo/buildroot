#!/bin/sh
# run after create rootfs
ROOT=${TARGET_DIR}/root
touch ${TARGET_DIR}/root/hello.txt
# test large file
dd if=/dev/zero of=$ROOT/rootfs.ext4 bs=1M count=100
echo world > $ROOT/hello.txt