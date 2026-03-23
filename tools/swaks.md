# swaks

## 简介
SMTP 测试工具，发送测试邮件

## 核心参数
- `--to`: 收件人
- `--from`: 发件人
- `--server`: SMTP 服务器

## 命令示例
```bash
# 发送测试邮件
swaks --to user@target.com --from test@example.com

# SMTP 认证
swaks --to user@target.com --from test@example.com --auth-user admin --auth-password pass

# 指定服务器
swaks --to user@target.com --server 192.168.1.100

# 发送附件
swaks --to user@target.com --attach file.pdf
```

## 使用场景
测试 SMTP 配置，发送钓鱼邮件，验证邮件过滤规则

## 所属分类
- [SNMP/SMTP/SSL-TLS 工具](../categories/28-snmp-smtp-ssl.md)
