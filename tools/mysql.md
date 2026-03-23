# mysql

## 简介
MySQL 命令行客户端

## 核心参数
- `-h`: 主机地址
- `-u`: 用户名
- `-p`: 密码
- `-e`: 执行 SQL 命令

## 命令示例
```bash
# 连接到 MySQL
mysql -h 192.168.1.100 -u root -p

# 指定密码（不安全）
mysql -h 192.168.1.100 -u root -ppassword

# 执行单条命令
mysql -h 192.168.1.100 -u root -p -e "SHOW DATABASES;"

# 连接到特定数据库
mysql -h 192.168.1.100 -u root -p database_name

# 执行 SQL 文件
mysql -h 192.168.1.100 -u root -p < script.sql

# 导出数据库
mysqldump -h 192.168.1.100 -u root -p database_name > backup.sql
```

## 使用场景
连接和操作 MySQL 数据库

## 所属分类
- [数据库工具 (Databases)](../categories/29-databases.md)
