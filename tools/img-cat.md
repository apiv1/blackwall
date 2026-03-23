# img-cat

## 简介
输出镜像文件内容

## 核心参数
- 镜像文件

## 命令示例
```bash
# 输出镜像内容
img_cat disk.img

# 输出到文件
img_cat disk.img > output.bin

# 指定偏移量
img_cat -s 512 disk.img
```

## 使用场景
提取磁盘镜像的原始数据

## 所属分类
- [Sleuth Kit 取证工具套件](../categories/32-sleuth-kit-suite.md)
