# searchsploit

## 简介
Exploit-DB 本地搜索工具

## 核心参数
- 搜索关键词
- `-m`: 复制 exploit
- `-x`: 查看 exploit

## 命令示例
```bash
# 搜索 exploit
searchsploit apache

# 搜索特定版本
searchsploit apache 2.4

# 精确搜索
searchsploit -t apache

# 查看 exploit 详情
searchsploit -x exploits/linux/remote/12345.py

# 复制 exploit 到当前目录
searchsploit -m exploits/linux/remote/12345.py

# 搜索并显示路径
searchsploit -p apache

# 更新数据库
searchsploit -u
```

## 使用场景
快速查找已知漏洞的 exploit 代码

## 所属分类
- [资源开发 (Resource Development)](../categories/26-resource-development.md)
