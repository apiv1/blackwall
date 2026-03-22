# sslh

## 简介
多协议端口复用工具，在同一端口上运行多个服务

## 核心参数
- `-p`: 监听端口
- `--ssh/--ssl`: 指定后端服务

## 命令示例
```bash
# 基本用法
sslh [参数]
```

## 使用场景
在 443 端口同时运行 HTTPS 和 SSH，绕过端口限制

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
