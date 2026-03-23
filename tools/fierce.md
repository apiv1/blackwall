# fierce

## 简介
DNS 侦察工具，尝试区域传送和暴力破解

## 核心参数
- `--domain`: 指定域名
- `--dns-servers`: 指定 DNS 服务器
- `--subdomain-file`: 指定子域名文件

## 命令示例
```bash
# 基本扫描
fierce --domain target.com

# 指定 DNS 服务器
fierce --domain target.com --dns-servers 8.8.8.8

# 使用自定义子域名文件
fierce --domain target.com --subdomain-file subdomains.txt

# 扫描 IP 范围
fierce --domain target.com --range 192.168.1.0/24

# 尝试连接发现的主机
fierce --domain target.com --connect
```

## 使用场景
DNS 侦察和子域名发现

## 所属分类
- [DNS 枚举 (DNS Enumeration)](../categories/02-dns-enumeration.md)
