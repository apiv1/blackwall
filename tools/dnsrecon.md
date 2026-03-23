# dnsrecon

## 简介
强大的 DNS 枚举工具，支持多种查询类型

## 核心参数
- `-d`: 指定域名
- `-t`: 指定枚举类型
- `-D`: 使用字典暴力破解

## 命令示例
```bash
# 标准枚举
dnsrecon -d target.com

# 区域传送
dnsrecon -d target.com -t axfr

# 暴力破解子域名
dnsrecon -d target.com -D /usr/share/wordlists/dnsmap.txt -t brt

# 反向查询
dnsrecon -r 192.168.1.0/24

# 缓存嗅探
dnsrecon -d target.com -t snoop

# 所有记录类型
dnsrecon -d target.com -t std

# 输出到 XML
dnsrecon -d target.com -x output.xml
```

## 使用场景
全面的 DNS 侦察，支持多种枚举技术

## 所属分类
- [DNS 枚举 (DNS Enumeration)](../categories/02-dns-enumeration.md)
