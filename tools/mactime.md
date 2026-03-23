# mactime

## 简介
生成文件系统时间线，用于取证分析

## 核心参数
- `-b`: body 文件（由 fls 生成）
- `-d`: 日期范围

## 命令示例
```bash
# 生成时间线
mactime -b body_file -d > timeline.csv

# 指定时间范围
mactime -b body_file -d 2024-01-01..2024-12-31
```

## 使用场景
分析文件访问时间线，追踪攻击者的操作轨迹

## 所属分类
- [Sleuth Kit 取证工具套件 (Sleuth Kit Suite)](../categories/32-sleuth-kit-suite.md)
