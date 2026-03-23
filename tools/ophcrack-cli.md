# ophcrack-cli

## 简介
基于彩虹表的 Windows 密码破解工具

## 核心参数
- `-t`: 指定彩虹表路径
- `-f`: 指定 SAM 文件

## 命令示例
```bash
# 命令行模式
ophcrack-cli -t /path/to/tables -f hashes.txt

# 从 SAM 文件
ophcrack-cli -t /path/to/tables -s SAM
```

## 使用场景
当你获取到 Windows SAM 文件且有彩虹表时，能快速破解弱密码

## 所属分类
- [密码破解 (Password Cracking)](../categories/08-password-cracking.md)
