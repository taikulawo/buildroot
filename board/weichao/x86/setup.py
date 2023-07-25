#!/bin/python3
import os
target_dir = os.environ["TARGET_DIR"]
fs_etc = f'{target_dir}/etc'
mnt_guest_path = f'{target_dir}/mnt/guest'

os.system(f'mkdir -p {mnt_guest_path}')

# mount guest 9plan fs
fs_tab = f'{fs_etc}/fstab'
handle = open(fs_tab, "a+")
c = handle.read()
c1 = "guestroot   /mnt/guest    9p      trans=virtio,version=9p2000.L   0 0\n"
if c1 not in c:
    handle.write(c1)
