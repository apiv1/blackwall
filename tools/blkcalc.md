# blkcalc

## 简介
在块地址和扇区地址之间转换

## 核心参数
- 镜像文件
- 块地址

## 命令示例
```bash
# 块地址转扇区地址
blkcalc disk.img 1000

# 指定文件系统类型
blkcalc -f ext4 disk.img 1000

# 显示详细信息
blkcalc -v disk.img 1000
```

## 使用场景
数字取证中的地址转换

## 所属分类
- [Sleuth Kit 取证工具套件](../categories/32-sleuth-kit-suite.md)
