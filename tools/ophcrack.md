# ophcrack

## 简介
Windows 密码破解工具，使用彩虹表

## 核心参数
- GUI 或命令行模式
- 彩虹表路径

## 命令示例
```bash
# 启动 GUI
ophcrack

# 命令行模式
ophcrack -t /path/to/tables -f hashes.txt

# 从 SAM 文件加载
ophcrack -t /path/to/tables -s SAM

# 显示详细信息
ophcrack -v -t /path/to/tables -f hashes.txt
```

## 使用场景
使用彩虹表快速破解 Windows 密码

## 所属分类
- [密码破解 (Password Cracking)](../categories/08-password-cracking.md)
