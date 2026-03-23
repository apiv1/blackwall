# icat

## 简介
通过 inode 提取文件内容

## 核心参数
- 镜像文件
- inode 号

## 命令示例
```bash
# 提取文件
icat disk.img 12345

# 输出到文件
icat disk.img 12345 > recovered_file.txt

# 指定文件系统类型
icat -f ext4 disk.img 12345

# 恢复已删除文件
icat disk.img 12345 > deleted_file.bin
```

## 使用场景
通过 inode 恢复文件内容

## 所属分类
- [Sleuth Kit 取证工具套件](../categories/32-sleuth-kit-suite.md)
