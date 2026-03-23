# fls

## 简介
列出文件系统中的文件和目录

## 核心参数
- 镜像文件
- `-r`: 递归列出
- `-d`: 只显示已删除文件

## 命令示例
```bash
# 列出根目录
fls disk.img

# 递归列出
fls -r disk.img

# 只显示已删除文件
fls -d disk.img

# 列出特定目录
fls disk.img 1234

# 指定文件系统类型
fls -f ext4 disk.img
```

## 使用场景
浏览磁盘镜像的文件系统

## 所属分类
- [Sleuth Kit 取证工具套件](../categories/32-sleuth-kit-suite.md)
