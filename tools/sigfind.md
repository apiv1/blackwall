# sigfind

## 简介
在磁盘中搜索特定签名

## 核心参数
无特定参数或使用默认参数

## 命令示例
```bash
# 查找文件签名
sigfind 504B0304 disk.img

# 指定偏移量
sigfind -o 512 504B0304 disk.img
```

## 使用场景
查找文件头、分区表等特定字节序列

## 所属分类
- [Sleuth Kit 取证工具套件 (Sleuth Kit Suite)](../categories/32-sleuth-kit-suite.md)
