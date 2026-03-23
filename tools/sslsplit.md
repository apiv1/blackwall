# sslsplit

## 简介
SSL/TLS 中间人攻击工具

## 核心参数
- `-D`: 守护进程模式
- `-l`: 日志目录
- `-S`: SSL 连接日志

## 命令示例
```bash
# 基本 SSL 拦截
sslsplit -D -l /tmp/sslsplit -S /tmp/sslsplit/ssl.log ssl 0.0.0.0 8443 tcp 0.0.0.0 8080

# HTTPS 透明代理
sslsplit -D -l /tmp/sslsplit https 0.0.0.0 8443

# 使用自定义证书
sslsplit -D -l /tmp/sslsplit -c ca.crt -k ca.key https 0.0.0.0 8443

# 查看日志
tail -f /tmp/sslsplit/ssl.log
```

## 使用场景
SSL/TLS 流量拦截和分析

## 所属分类
- [数据收集 (Collection)](../categories/18-collection.md)
