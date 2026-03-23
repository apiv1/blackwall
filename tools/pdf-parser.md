# pdf-parser

## 简介
深度解析 PDF 文件结构

## 核心参数
- `--search`: 搜索特定对象
- `--object`: 查看特定对象

## 命令示例
```bash
# 基本解析
pdf-parser file.pdf

# 搜索 JavaScript
pdf-parser --search javascript file.pdf

# 查看特定对象
pdf-parser --object 10 file.pdf

# 过滤特定类型
pdf-parser --filter /JS file.pdf

# 输出到文件
pdf-parser file.pdf > analysis.txt
```

## 使用场景
提取 PDF 中的恶意代码或隐藏数据

## 所属分类
- [其他工具 (Misc Tools)](../categories/31-misc-tools.md)
