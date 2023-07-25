#!/bin/sh
# 注释掉，每次修改文件make -j2后脚本都会运行
# 给etc/写入重复的配置
# 现在改用 BR2_ROOTFS_OVERLAY
# https://stackoverflow.com/questions/17885451/how-to-rebuild-rootfs-in-buildroot

# run after create rootfs
# 此脚本在全部package(build/目录下，第三方依赖，kernel image)编译, initramfs(target/)构建完成，
# 即将在images/生成最后的rootfs，kernel image bootloader 之前运行
ROOT=${TARGET_DIR}/root
OUTPUT_LOCATION=$BUILD_DIR
ETC=${TARGET_DIR}/etc
# echo $OUTPUT_LOCATION

# echo $TARGET_DIR
# # test large file
# echo $OUTPUT_LOCATION
# printf "PermitRootLogin yes\n\
# PermitEmptyPasswords=yes\n" >> $ETC/ssh/sshd_config
# dd if=/dev/zero of=$ROOT/rootfs.ext4 bs=1M count=100

# cat << EOF >> $ETC/network/interfaces
# auto eth0
# iface eth0 inet dhcp
# EOF
# mkdir -p ${TARGET_DIR}/mnt/guest
# printf "guestroot   /mnt/guest    9p      trans=virtio,version=9p2000.L   0 0\n" >> $ETC/fstab
echo $(pwd)

python3 ./board/weichao/x86/setup.py