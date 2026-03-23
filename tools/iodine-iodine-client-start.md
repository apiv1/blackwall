# iodine (iodine-client-start)

## 简介
通过 DNS 创建 IPv4 隧道

## 核心参数
- 客户端：`iodine -f <nameserver> <domain>`
- 服务端：`iodined -f <IP> <domain>`
- `-P`: 设置密码

## 命令示例
```bash
# DNS 隧道客户端
iodine -f 192.168.99.1 tunnel.example.com

# 服务端
iodined -f 192.168.99.1 tunnel.example.com
```

## 使用场景
绕过防火墙限制，通过 DNS 建立完整的网络隧道，比 dns2tcp 更强大

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
