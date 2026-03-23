# dnsmap

## 简介
子域名暴力破解工具

## 核心参数
- 直接跟域名
- `-w`: 指定字典文件
- `-r`: 结果输出文件

## 命令示例
```bash
# 基本扫描（使用内置字典）
dnsmap target.com

# 使用自定义字典
dnsmap target.com -w /usr/share/wordlists/dnsmap.txt

# 输出到文件
dnsmap target.com -r results.txt

# 指定延迟
dnsmap target.com -d 1000
```

## 使用场景
快速的子域名暴力破解

## 所属分类
- [DNS 枚举 (DNS Enumeration)](../categories/02-dns-enumeration.md)
