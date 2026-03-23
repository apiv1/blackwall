# postgresql

## 简介
PostgreSQL 数据库客户端

## 核心参数
- `-h`: 主机地址
- `-U`: 用户名
- `-d`: 数据库名

## 命令示例
```bash
# 连接到 PostgreSQL
psql -h 192.168.1.100 -U postgres

# 连接到特定数据库
psql -h 192.168.1.100 -U postgres -d database_name

# 执行 SQL 命令
psql -h 192.168.1.100 -U postgres -c "SELECT version();"

# 执行 SQL 文件
psql -h 192.168.1.100 -U postgres -f script.sql

# 列出数据库
psql -h 192.168.1.100 -U postgres -l

# 导出数据库
pg_dump -h 192.168.1.100 -U postgres database_name > backup.sql
```

## 使用场景
连接和操作 PostgreSQL 数据库

## 所属分类
- [数据库工具 (Databases)](../categories/29-databases.md)
