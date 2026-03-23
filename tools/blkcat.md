# blkcat

## 简介
提取特定块的内容

## 核心参数
- 镜像文件
- 块地址

## 命令示例
```bash
# 提取块内容
blkcat disk.img 1000

# 输出到文件
blkcat disk.img 1000 > block_content.bin

# 指定文件系统类型
blkcat -f ext4 disk.img 1000
```

## 使用场景
提取磁盘特定块的数据

## 所属分类
- [Sleuth Kit 取证工具套件](../categories/32-sleuth-kit-suite.md)
