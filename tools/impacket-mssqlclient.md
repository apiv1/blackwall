# impacket-mssqlclient

## 简介
MSSQL 客户端工具，支持 Windows 认证

## 核心参数
- 格式：user:password@host
- `-windows-auth`: 使用 Windows 认证

## 命令示例
```bash
# 基本连接
impacket-mssqlclient user:password@192.168.1.100

# Windows 认证
impacket-mssqlclient domain/user:password@192.168.1.100 -windows-auth

# 使用哈希认证
impacket-mssqlclient user@192.168.1.100 -hashes :ntlm_hash

# 指定数据库
impacket-mssqlclient user:password@192.168.1.100 -db master

# 执行命令
impacket-mssqlclient user:password@192.168.1.100 -windows-auth
# SQL> xp_cmdshell whoami
```

## 使用场景
连接和利用 MSSQL 数据库

## 所属分类
- [数据库工具 (Databases)](../categories/29-databases.md)
