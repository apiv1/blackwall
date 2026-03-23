# ils

## 简介
列出 inode 信息

## 核心参数
- 镜像文件
- `-r`: 显示已删除文件

## 命令示例
```bash
# 列出所有 inode
ils disk.img

# 只显示已删除文件的 inode
ils -r disk.img

# 指定文件系统类型
ils -f ext4 disk.img

# 输出到文件
ils -r disk.img > deleted_inodes.txt
```

## 使用场景
查找已删除文件的 inode

## 所属分类
- [Sleuth Kit 取证工具套件](../categories/32-sleuth-kit-suite.md)
