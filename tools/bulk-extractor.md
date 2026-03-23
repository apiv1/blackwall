# bulk-extractor

## 简介
从磁盘镜像中批量提取特征（邮箱、URL、信用卡号等）

## 核心参数
- `-o`: 输出目录
- `-E`: 启用特定扫描器
- `-x`: 禁用特定扫描器

## 命令示例
```bash
# 基本扫描
bulk_extractor -o output_dir disk.img

# 只提取邮箱和 URL
bulk_extractor -E email -E url -o output_dir disk.img

# 禁用特定扫描器
bulk_extractor -x zip -o output_dir disk.img

# 扫描内存转储
bulk_extractor -o output_dir memory.dmp

# 启用调试输出
bulk_extractor -d 2 -o output_dir disk.img
```

## 使用场景
从大量数据中快速提取有价值信息

## 所属分类
- [取证工具 (Forensics)](../categories/25-forensics.md)
