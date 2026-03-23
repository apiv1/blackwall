# proxytunnel

## 简介
通过 HTTP 代理建立 SSL 隧道

## 核心参数
- `-p`: 代理服务器
- `-d`: 目标服务器

## 命令示例
```bash
# 通过 HTTP 代理建立隧道
proxytunnel -p proxy.com:8080 -d target.com:22 -a 5555

# 使用认证
proxytunnel -p proxy.com:8080 -P user:pass -d target.com:22 -a 5555
```

## 使用场景
绕过 HTTP 代理限制，建立加密隧道

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
