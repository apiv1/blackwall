# SMTP 工具

## 简介
SMTP 测试工具，发送测试邮件

## 核心参数
- `-M`: 枚举方法（VRFY、EXPN、RCPT）
- `-U`: 用户名列表文件
- `-t`: 目标主机
- `--to`: 收件人
- `--from`: 发件人
- `--server`: SMTP 服务器

## 命令示例
```bash
# SMTP 工具
# 使用 swaks 测试
swaks --to user@target.com --server 192.168.1.100

# 使用 smtp-user-enum 枚举
smtp-user-enum -M VRFY -U users.txt -t 192.168.1.100
```

## 使用场景
测试 SMTP 配置，发送钓鱼邮件

## 所属分类
- [SNMP/SMTP/SSL-TLS 工具](../categories/28-snmp-smtp-ssl.md)
