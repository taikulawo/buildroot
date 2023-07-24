#!/bin/sh
# run after create rootfs
# 此脚本在全部package(build/目录下，第三方依赖，kernel image)编译, initramfs(target/)构建完成，
# 即将在images/生成最后的rootfs，kernel image bootloader 之前运行
ROOT=${TARGET_DIR}/root
OUTPUT_LOCATION=$BUILD_DIR
echo $OUTPUT_LOCATION
echo $TARGET_DIR
# test large file
dd if=/dev/zero of=$ROOT/rootfs.ext4 bs=1M count=100
