# dns-rebind

## 简介
DNS 重绑定攻击工具

## 核心参数
- 配置 DNS 服务器
- 设置重绑定规则

## 命令示例
```bash
# 启动 DNS 重绑定服务器
dns-rebind --domain rebind.example.com --ip1 1.2.3.4 --ip2 192.168.1.100

# 指定端口
dns-rebind --port 53 --domain rebind.example.com --ip1 1.2.3.4 --ip2 192.168.1.100

# 设置切换时间
dns-rebind --domain rebind.example.com --ip1 1.2.3.4 --ip2 192.168.1.100 --ttl 1
```

## 使用场景
绕过同源策略进行内网攻击

## 所属分类
- [DNS 枚举 (DNS Enumeration)](../categories/02-dns-enumeration.md)
