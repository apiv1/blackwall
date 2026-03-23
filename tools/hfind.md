# hfind

## 简介
在哈希数据库中查找哈希值

## 核心参数
- 数据库文件
- 哈希值

## 命令示例
```bash
# 查找哈希
hfind hashdb.txt 5d41402abc4b2a76b9719d911017c592

# 从文件读取哈希
hfind hashdb.txt -f hashes.txt

# 使用 NSRL 数据库
hfind /path/to/nsrl/NSRLFile.txt hash_value
```

## 使用场景
在已知文件哈希数据库中查找

## 所属分类
- [Sleuth Kit 取证工具套件](../categories/32-sleuth-kit-suite.md)
