# hping3

## 简介
高级 TCP/IP 数据包生成和分析工具

## 核心参数
- `-S`: SYN 扫描
- `-A`: ACK 扫描
- `-p`: 指定端口
- `--flood`: 洪水攻击模式

## 命令示例
```bash
# SYN 扫描
hping3 -S 192.168.1.100 -p 80

# ACK 扫描
hping3 -A 192.168.1.100 -p 80

# UDP 扫描
hping3 --udp 192.168.1.100 -p 53

# ICMP ping
hping3 -1 192.168.1.100

# 端口扫描
hping3 -S 192.168.1.100 -p ++1

# 伪造源 IP
hping3 -S 192.168.1.100 -p 80 -a 10.10.10.10
```

## 使用场景
高级网络测试和防火墙规则测试

## 所属分类
- [网络服务发现 (Network Service Discovery)](../categories/03-network-service-discovery.md)
