# smtp-user-enum

## 简介
通过 SMTP 协议枚举有效用户名

## 核心参数
- `-M`: 枚举模式（VRFY, EXPN, RCPT）
- `-U`: 用户名列表
- `-t`: 目标主机

## 命令示例
```bash
# VRFY 模式枚举
smtp-user-enum -M VRFY -U users.txt -t 192.168.1.100

# EXPN 模式枚举
smtp-user-enum -M EXPN -U users.txt -t 192.168.1.100

# RCPT 模式枚举
smtp-user-enum -M RCPT -U users.txt -t 192.168.1.100

# 指定端口
smtp-user-enum -M VRFY -U users.txt -t 192.168.1.100 -p 25

# 详细输出
smtp-user-enum -M VRFY -U users.txt -t 192.168.1.100 -v
```

## 使用场景
通过 SMTP 服务枚举有效用户名

## 所属分类
- [SNMP/SMTP/SSL-TLS 工具](../categories/28-snmp-smtp-ssl.md)
