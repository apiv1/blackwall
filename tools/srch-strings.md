# srch_strings

## 简介
搜索字符串（类似 strings）

## 核心参数
无特定参数或使用默认参数

## 命令示例
```bash
# 搜索字符串
srch_strings disk.img

# 最小长度
srch_strings -n 10 disk.img

# Unicode 字符串
srch_strings -e l disk.img
```

## 使用场景
从磁盘镜像中提取可读字符串

## 所属分类
- [Sleuth Kit 取证工具套件 (Sleuth Kit Suite)](../categories/32-sleuth-kit-suite.md)
