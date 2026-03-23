# magicrescue

## 简介
使用"魔术字节"恢复文件

## 核心参数
- `-r`: 指定配方文件
- `-d`: 输出目录

## 命令示例
```bash
# 恢复特定文件类型
magicrescue -r jpeg -d output_dir disk.img

# 恢复多种类型
magicrescue -r jpeg -r png -d output_dir disk.img

# 从设备恢复
magicrescue -r jpeg -d output_dir /dev/sdb1
```

## 使用场景
恢复特定类型的文件（图片、文档等）

## 所属分类
- [取证工具 (Forensics)](../categories/25-forensics.md)
