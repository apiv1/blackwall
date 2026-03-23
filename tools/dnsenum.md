# dnsenum

## 简介
DNS 枚举工具，支持区域传送、暴力破解、反向查询

## 核心参数
- `-f`: 指定子域名字典
- `--enum`: 执行标准枚举
- `-r`: 递归查询

## 命令示例
```bash
# 基本枚举
dnsenum target.com

# 使用字典暴力破解子域名
dnsenum -f /usr/share/wordlists/dnsmap.txt target.com

# 尝试区域传送
dnsenum --enum target.com

# 指定 DNS 服务器
dnsenum --dnsserver 8.8.8.8 target.com

# 输出到文件
dnsenum -o results.txt target.com

# 详细输出
dnsenum -v target.com
```

## 使用场景
DNS 信息收集和子域名枚举的经典工具

## 所属分类
- [DNS 枚举 (DNS Enumeration)](../categories/02-dns-enumeration.md)
