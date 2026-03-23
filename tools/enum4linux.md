# enum4linux

## 简介
Linux 下的 Windows/Samba 枚举工具，获取用户、共享、组信息

## 核心参数
- `-a`: 全面枚举
- `-U`: 枚举用户
- `-S`: 枚举共享
- `-G`: 枚举组

## 命令示例
```bash
# 全面枚举
enum4linux -a 192.168.1.100

# 只枚举用户
enum4linux -U 192.168.1.100

# 只枚举共享
enum4linux -S 192.168.1.100

# 枚举密码策略
enum4linux -P 192.168.1.100

# 使用凭据枚举
enum4linux -u admin -p password -a 192.168.1.100
```

## 使用场景
当你发现 SMB 服务时，enum4linux 能快速枚举所有可用信息

## 所属分类
- [网络共享发现 (Network Share Discovery)](../categories/10-network-share-discovery.md)
