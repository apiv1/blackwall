# unicornscan

## 简介
异步 TCP/UDP 端口扫描器，支持分布式扫描

## 核心参数
- `-mT`: TCP 扫描模式
- `-mU`: UDP 扫描模式
- `-Iv`: 详细输出模式

## 命令示例
```bash
# TCP SYN 扫描
unicornscan -mT 192.168.1.100:1-65535

# UDP 扫描
unicornscan -mU 192.168.1.100:1-1000

# 详细输出
unicornscan -Iv -mT 192.168.1.100:80,443,22

# 扫描整个网段
unicornscan -mT 192.168.1.0/24:80,443

# 快速扫描常用端口
unicornscan -mT 192.168.1.100:a

# 指定速率
unicornscan -r 1000 -mT 192.168.1.100:1-1000
```

## 使用场景
当 nmap 被防火墙拦截时，unicornscan 的异步扫描方式可能绕过某些检测

## 所属分类
- [网络信息收集 (Network Information Gathering)](../categories/01-network-information.md)
