# arpspoof

## 简介
ARP 欺骗工具，实现中间人攻击

## 核心参数
- `-i`: 网络接口
- `-t`: 目标主机
- 网关 IP

## 命令示例
```bash
# 欺骗目标主机（伪装成网关）
arpspoof -i eth0 -t 192.168.1.100 192.168.1.1

# 双向欺骗（同时欺骗目标和网关）
# 终端1：欺骗目标
arpspoof -i eth0 -t 192.168.1.100 192.168.1.1
# 终端2：欺骗网关
arpspoof -i eth0 -t 192.168.1.1 192.168.1.100

# 启用 IP 转发（配合使用）
echo 1 > /proc/sys/net/ipv4/ip_forward
```

## 使用场景
中间人攻击的基础工具

## 所属分类
- [网络嗅探 (Network Sniffing)](../categories/17-network-sniffing.md)
