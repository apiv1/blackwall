# ncrack

## 简介
高速网络认证破解工具

## 核心参数
- `-U`: 用户名列表
- `-P`: 密码列表
- `-p`: 指定端口

## 命令示例
```bash
# SSH 暴力破解
ncrack -U users.txt -P passwords.txt ssh://192.168.1.100

# RDP 暴力破解
ncrack -U users.txt -P passwords.txt rdp://192.168.1.100

# FTP 暴力破解
ncrack -U users.txt -P passwords.txt ftp://192.168.1.100

# 多个目标
ncrack -U users.txt -P passwords.txt ssh://192.168.1.100,192.168.1.101

# 指定端口
ncrack -U users.txt -P passwords.txt ssh://192.168.1.100:2222

# 详细输出
ncrack -v -U users.txt -P passwords.txt ssh://192.168.1.100
```

## 使用场景
高速网络服务暴力破解

## 所属分类
- [暴力破解 (Brute Force)](../categories/07-brute-force.md)
