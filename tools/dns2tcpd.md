# dns2tcpd

## 简介
DNS 隧道服务端

## 核心参数
- `-F`: 前台运行
- `-f`: 配置文件

## 命令示例
```bash
# 使用配置文件运行
dns2tcpd -f /etc/dns2tcpd.conf

# 前台运行
dns2tcpd -F -f /etc/dns2tcpd.conf

# 配置文件示例
cat > dns2tcpd.conf << 'CONFIG'
listen = 0.0.0.0
port = 53
domain = tunnel.example.com
resources = ssh:127.0.0.1:22
CONFIG
```

## 使用场景
搭建 DNS 隧道服务器

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
