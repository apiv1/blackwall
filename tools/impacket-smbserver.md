# impacket-smbserver

## 简介
快速搭建 SMB 服务器，用于文件传输

## 核心参数
- 共享名称
- 共享路径
- `-smb2support`: 启用 SMB2

## 命令示例
```bash
# 基本 SMB 服务器
impacket-smbserver share /tmp/share

# 启用 SMB2 支持
impacket-smbserver share /tmp/share -smb2support

# 需要认证
impacket-smbserver share /tmp/share -username user -password pass

# 指定监听地址
impacket-smbserver share /tmp/share -ip 192.168.1.100

# Windows 客户端连接
# net use \\192.168.1.100\share
# copy file.txt \\192.168.1.100\share\
```

## 使用场景
快速搭建 SMB 服务器进行文件传输

## 所属分类
- [数据渗出 (Exfiltration)](../categories/21-exfiltration.md)
