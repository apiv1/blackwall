# ptunnel

## 简介
通过 ICMP 隧道传输 TCP 连接

## 核心参数
- `-p`: 代理服务器
- `-lp/-da/-dp`: 本地端口/目标地址/目标端口

## 命令示例
```bash
# 基本用法
ptunnel [参数]
```

## 使用场景
当 ICMP 未被过滤时，通过 ping 包建立隧道

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
