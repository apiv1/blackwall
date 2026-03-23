# netdiscover

## 简介
主动/被动 ARP 侦察工具，发现本地网络主机

## 核心参数
- `-r`: 指定扫描范围
- `-p`: 被动模式
- `-i`: 指定网络接口

## 命令示例
```bash
# 自动扫描当前网段
netdiscover

# 扫描指定网段
netdiscover -r 192.168.1.0/24

# 被动模式（监听 ARP 流量）
netdiscover -p

# 指定网络接口
netdiscover -i eth0 -r 192.168.1.0/24

# 快速模式
netdiscover -r 192.168.1.0/24 -f

# 输出到文件
netdiscover -r 192.168.1.0/24 > results.txt
```

## 使用场景
快速发现本地网络中的活动主机

## 所属分类
- [网络服务发现 (Network Service Discovery)](../categories/03-network-service-discovery.md)
