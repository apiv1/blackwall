# cryptsetup

## 简介
Linux 磁盘加密工具（LUKS），加密和管理加密分区

## 核心参数
- `luksFormat`: 格式化为加密分区
- `luksOpen`: 打开加密分区
- `luksClose`: 关闭加密分区

## 命令示例
```bash
# 创建加密分区
cryptsetup luksFormat /dev/sdb1

# 打开加密分区
cryptsetup luksOpen /dev/sdb1 encrypted_disk

# 挂载加密分区
mount /dev/mapper/encrypted_disk /mnt/encrypted

# 卸载并关闭
umount /mnt/encrypted
cryptsetup luksClose encrypted_disk

# 查看加密分区信息
cryptsetup luksDump /dev/sdb1

# 添加密钥
cryptsetup luksAddKey /dev/sdb1
```

## 使用场景
加密敏感数据或创建隐蔽存储

## 所属分类
- [防御规避 (Defense Evasion)](../categories/27-defense-evasion.md)
