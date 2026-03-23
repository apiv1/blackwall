# scalpel

## 简介
基于文件头/尾的数据雕刻工具

## 核心参数
- `-c`: 配置文件
- `-o`: 输出目录

## 命令示例
```bash
# 恢复文件
scalpel disk.img -o output_dir

# 使用配置文件
scalpel -c scalpel.conf disk.img -o output_dir

# 详细输出
scalpel -v disk.img -o output_dir
```

## 使用场景
从磁盘镜像中雕刻出特定类型的文件

## 所属分类
- [取证工具 (Forensics)](../categories/25-forensics.md)
