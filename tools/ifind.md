# ifind

## 简介
通过文件名查找 inode

## 核心参数
- 镜像文件
- 文件名

## 命令示例
```bash
# 查找文件的 inode
ifind disk.img -n filename

# 在特定目录查找
ifind disk.img -n filename -d 1234

# 指定文件系统类型
ifind -f ext4 disk.img -n filename
```

## 使用场景
通过文件名查找对应的 inode 号

## 所属分类
- [Sleuth Kit 取证工具套件](../categories/32-sleuth-kit-suite.md)
