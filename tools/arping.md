# arping

## 简介
使用 ARP 协议发现本地网络中的主机

## 核心参数
- `-i`: 指定网络接口
- `-c`: 发送次数
- `-d`: 检测重复 IP

## 命令示例
```bash
# 基本 ARP ping
arping -i eth0 192.168.1.1

# 发送 5 次请求
arping -i eth0 -c 5 192.168.1.100

# 检测 IP 冲突
arping -i eth0 -d 192.168.1.100

# 广播模式
arping -i eth0 -b 192.168.1.255

# 详细输出
arping -i eth0 -v 192.168.1.100
```

## 使用场景
本地网络主机发现和 IP 冲突检测

## 所属分类
- [网络服务发现 (Network Service Discovery)](../categories/03-network-service-discovery.md)
