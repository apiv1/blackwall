# 其他 Sleuth Kit 工具

## 简介


## 核心参数
无特定参数或使用默认参数

## 命令示例
```bash
# Sleuth Kit 工具集
# 列出文件
fls disk.img

# 提取文件
icat disk.img 12345 > file.txt

# 时间线分析
fls -r -m / disk.img > bodyfile
mactime -b bodyfile -d > timeline.csv
```

## 使用场景


## 所属分类
- [Sleuth Kit 取证工具套件 (Sleuth Kit Suite)](../categories/32-sleuth-kit-suite.md)
