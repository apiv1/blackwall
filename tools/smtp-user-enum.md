# smtp-user-enum

## 简介
枚举 SMTP 服务器的有效用户

## 核心参数
- `-M`: 枚举模式（VRFY/EXPN/RCPT）
- `-U`: 用户名列表
- `-t`: 目标主机

## 命令示例
```bash
# 基本用法
smtp-user-enum [参数]
```

## 使用场景
通过 SMTP 协议枚举有效用户名，为后续爆破做准备

## 所属分类
- [SNMP/SMTP/SSL-TLS 工具](../categories/28-snmp-smtp-ssl.md)
