# udptunnel

## 简介
通过 UDP 隧道传输 TCP 连接

## 核心参数
- `-s`: 服务端模式
- `-c`: 客户端模式

## 命令示例
```bash
# UDP 隧道
udptunnel -s 0.0.0.0:5353 192.168.1.100:53
```

## 使用场景
当 TCP 被过滤但 UDP 可通过时使用

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
