# dns2tcpc-dns2tcpd

## 简介
通过 DNS 隧道传输 TCP 连接

## 核心参数
- 客户端和服务端配置

## 命令示例
```bash
# 客户端连接
dns2tcpc -z tunnel.example.com -r ssh -l 2222

# 服务端运行
dns2tcpd -f /etc/dns2tcpd.conf -F

# 配置文件示例
cat > dns2tcpd.conf << 'CONFIG'
listen = 0.0.0.0
port = 53
domain = tunnel.example.com
resources = ssh:127.0.0.1:22
CONFIG
```

## 使用场景
通过 DNS 协议建立隐蔽的 TCP 隧道

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
