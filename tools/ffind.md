# ffind

## 简介
按文件名查找文件（Sleuth Kit）

## 核心参数
- 镜像文件
- 文件名

## 命令示例
```bash
# 查找文件
ffind disk.img filename

# 按 inode 查找
ffind disk.img 12345

# 指定文件系统类型
ffind -f ext4 disk.img filename
```

## 使用场景
在磁盘镜像中查找文件

## 所属分类
- [Sleuth Kit 取证工具套件](../categories/32-sleuth-kit-suite.md)
