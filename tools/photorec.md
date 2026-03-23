# photorec

## 简介
文件恢复工具，从磁盘恢复已删除文件

## 核心参数
- 交互式界面
- 支持多种文件系统

## 命令示例
```bash
# 启动 PhotoRec
photorec

# 指定磁盘
photorec /dev/sdb

# 命令行模式
photorec /d /recovery/output /dev/sdb

# 恢复特定文件类型
photorec /cmd /dev/sdb fileopt,everything,disable,jpg,enable,search
```

## 使用场景
恢复已删除或损坏的文件

## 所属分类
- [取证工具 (Forensics)](../categories/25-forensics.md)
