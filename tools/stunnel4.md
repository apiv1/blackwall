# stunnel4

## 简介
SSL/TLS 加密隧道工具

## 核心参数
- 配置文件：/etc/stunnel/stunnel.conf
- 客户端/服务端模式

## 命令示例
```bash
# 创建客户端配置
cat > stunnel-client.conf << 'CONFIG'
[ssh]
client = yes
accept = 127.0.0.1:2222
connect = 192.168.1.100:443
CONFIG

# 启动客户端
stunnel4 stunnel-client.conf

# 创建服务端配置
cat > stunnel-server.conf << 'CONFIG'
[ssh]
accept = 443
connect = 127.0.0.1:22
cert = /etc/stunnel/stunnel.pem
CONFIG

# 启动服务端
stunnel4 stunnel-server.conf
```

## 使用场景
为非加密协议添加 SSL/TLS 加密层

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
