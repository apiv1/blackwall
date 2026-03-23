# blkstat

## 简介
显示块的分配状态

## 核心参数
- 镜像文件
- 块地址

## 命令示例
```bash
# 查看块状态
blkstat disk.img 1000

# 指定文件系统类型
blkstat -f ext4 disk.img 1000

# 详细输出
blkstat -v disk.img 1000
```

## 使用场景
检查磁盘块的分配状态

## 所属分类
- [Sleuth Kit 取证工具套件](../categories/32-sleuth-kit-suite.md)
