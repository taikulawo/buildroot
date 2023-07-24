#!/bin/sh
# run after create rootfs
touch ${TARGET_DIR}/root/hello.txt
echo world > ${TARGET_DIR}/root/hello.txt