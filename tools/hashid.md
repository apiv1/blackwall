# hashid

## 简介
Python 编写的哈希识别工具，支持更多哈希类型

## 核心参数
- 直接跟哈希值
- `-m`: 显示 hashcat 模式
- `-j`: 显示 john 格式

## 命令示例
```bash
# 识别单个哈希
hashid 5f4dcc3b5aa765d61d8327deb882cf99

# 显示 hashcat 模式
hashid -m 5f4dcc3b5aa765d61d8327deb882cf99

# 显示 john 格式
hashid -j 5f4dcc3b5aa765d61d8327deb882cf99

# 从文件读取
hashid -m hashes.txt

# 详细输出
hashid -e 5f4dcc3b5aa765d61d8327deb882cf99
```

## 使用场景
快速识别哈希类型并获取对应的破解工具参数

## 所属分类
- [哈希识别 (Hash Identification)](../categories/12-hash-identification.md)
