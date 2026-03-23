# smbmap

## 简介
SMB 共享枚举和权限检查工具

## 核心参数
- `-H`: 目标主机
- `-u/-p`: 用户名/密码
- `-r`: 递归列出目录
- `-x`: 执行命令

## 命令示例
```bash
# 匿名枚举共享
smbmap -H 192.168.1.100

# 使用凭据枚举
smbmap -H 192.168.1.100 -u username -p password

# 递归列出共享内容
smbmap -H 192.168.1.100 -u username -p password -r share_name

# 下载文件
smbmap -H 192.168.1.100 -u username -p password --download 'share\file.txt'

# 上传文件
smbmap -H 192.168.1.100 -u username -p password --upload '/local/file.txt' 'share\file.txt'

# 执行命令
smbmap -H 192.168.1.100 -u username -p password -x 'whoami'

# 使用哈希认证
smbmap -H 192.168.1.100 -u username -p 'aad3b435b51404eeaad3b435b51404ee:hash'
```

## 使用场景
SMB 共享权限检查和文件操作

## 所属分类
- [网络共享发现 (Network Share Discovery)](../categories/10-network-share-discovery.md)
