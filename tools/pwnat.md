# pwnat

## 简介
NAT 穿透工具，无需端口转发建立连接

## 核心参数
- `-s`: 服务端模式
- `-c`: 客户端模式

## 命令示例
```bash
# NAT 穿透服务端
pwnat -s

# NAT 穿透客户端
pwnat -c 192.168.1.100 -p 22
```

## 使用场景
在双方都在 NAT 后时建立直接连接

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
