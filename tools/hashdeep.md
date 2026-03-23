# hashdeep

## 简介
递归计算文件哈希值

## 核心参数
- `-r`: 递归目录
- `-c`: 比对模式

## 命令示例
```bash
# 计算目录哈希
hashdeep -r /path/to/directory

# 生成哈希数据库
hashdeep -r /path/to/directory > hashes.txt

# 比对哈希
hashdeep -r -k hashes.txt /path/to/directory

# 使用 SHA256
hashdeep -r -l /path/to/directory

# 详细输出
hashdeep -r -v /path/to/directory
```

## 使用场景
文件完整性验证和取证

## 所属分类
- [取证工具 (Forensics)](../categories/25-forensics.md)
