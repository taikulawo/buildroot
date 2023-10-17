#!/bin/python3
import os
target_dir = os.environ["TARGET_DIR"]
fs_etc = f'{target_dir}/etc'
mnt_guest_path = f'{target_dir}/mnt/guest'

os.system(f'mkdir -p {mnt_guest_path}')

points = [
    "guestroot   /mnt/guest    9p      trans=virtio,version=9p2000.L   0 0\n",
    "/dev/sda       /               ext4    rw,noauto       0       1\n"
]
# mount guest 9plan fs
fstab = f'{fs_etc}/fstab'
with open(fstab, "r+", encoding="utf-8") as fstab_handle:
    c = fstab_handle.readlines()
    for c0 in points:
        if c0 not in c:
            fstab_handle.write(f"\n{c0}")
