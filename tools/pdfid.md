# pdfid

## 简介
分析 PDF 文件结构，检测恶意内容

## 核心参数
- PDF 文件路径

## 命令示例
```bash
# 分析 PDF 文件
pdfid file.pdf

# 详细输出
pdfid -v file.pdf

# 扫描目录
pdfid -r /path/to/pdfs/

# 输出到 CSV
pdfid -c file.pdf
```

## 使用场景
快速识别 PDF 中的可疑元素（JavaScript、嵌入文件等）

## 所属分类
- [其他工具 (Misc Tools)](../categories/31-misc-tools.md)
