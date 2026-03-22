# dns2tcpc/dns2tcpd

## 简介
通过 DNS 隧道传输 TCP 连接

## 核心参数
- `dns2tcpc`: 客户端，`-z` 指定域名
- `dns2tcpd`: 服务端，`-F` 指定配置文件

## 命令示例
```bash
# 基本用法
dns2tcpc/dns2tcpd [参数]
```

## 使用场景
当只有 DNS 流量能出网时，通过 DNS 隧道建立连接

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
