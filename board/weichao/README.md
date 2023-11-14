### 手动切换root

```bash
mount -t ext4 /dev/sda /mnt
systemctl switch-root /mnt
```

### 构建 arm 镜像

如果sdcard.img最后刷入sdcard并插到开发板，那么 rootfs.ext4 并不需要 1G 大小。
只要能容下全部的文件就可以。img分区会将剩余的全部空间都留给rootfs
