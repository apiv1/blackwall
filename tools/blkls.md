# blkls

## 简介
列出未分配的数据块

## 核心参数
- 镜像文件

## 命令示例
```bash
# 列出未分配块
blkls disk.img

# 输出到文件
blkls disk.img > unallocated_blocks.txt

# 指定文件系统类型
blkls -f ext4 disk.img

# 显示详细信息
blkls -v disk.img
```

## 使用场景
查找已删除文件的数据块

## 所属分类
- [Sleuth Kit 取证工具套件](../categories/32-sleuth-kit-suite.md)
