# smbclient

## 简介
类似 FTP 的 SMB 客户端，用于访问 Windows 共享

## 核心参数
- `-L`: 列出可用共享
- `-N`: 无密码连接
- `-U`: 指定用户名

## 命令示例
```bash
# 列出共享
smbclient -L //192.168.1.100 -N

# 连接到共享（无密码）
smbclient //192.168.1.100/share -N

# 使用凭据连接
smbclient //192.168.1.100/share -U username

# 执行命令
smbclient //192.168.1.100/share -U username -c "ls"

# 下载文件
smbclient //192.168.1.100/share -U username -c "get file.txt"
```

## 使用场景
当你需要手动浏览 SMB 共享或上传/下载文件时使用

## 所属分类
- [网络共享发现 (Network Share Discovery)](../categories/10-network-share-discovery.md)
