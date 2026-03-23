# scapy

## 简介
强大的 Python 网络数据包操作库

## 核心参数
- 交互式 Python 环境
- 支持数据包构造和发送

## 命令示例
```bash
# 启动 Scapy
scapy

# Python 脚本示例
python3 << 'PYTHON'
from scapy.all import *

# 发送 ICMP 包
send(IP(dst="192.168.1.100")/ICMP())

# 发送并接收
ans = sr1(IP(dst="192.168.1.100")/ICMP())

# ARP 扫描
ans, unans = srp(Ether(dst="ff:ff:ff:ff:ff:ff")/ARP(pdst="192.168.1.0/24"), timeout=2)

# 嗅探数据包
sniff(filter="tcp port 80", count=10)
PYTHON
```

## 使用场景
自定义网络数据包构造和分析

## 所属分类
- [网络嗅探 (Network Sniffing)](../categories/17-network-sniffing.md)
