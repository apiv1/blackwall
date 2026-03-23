# dns2tcpc

## 简介
DNS 隧道客户端，通过 DNS 协议传输数据

## 核心参数
- `-z`: 指定域名
- `-r`: 指定资源
- `-l`: 本地监听端口

## 命令示例
```bash
# 基本连接
dns2tcpc -z tunnel.example.com

# 指定资源
dns2tcpc -z tunnel.example.com -r ssh

# 本地端口转发
dns2tcpc -z tunnel.example.com -l 2222 -r ssh

# 指定 DNS 服务器
dns2tcpc -z tunnel.example.com -d 8.8.8.8
```

## 使用场景
通过 DNS 协议建立隐蔽隧道

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
