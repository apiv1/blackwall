# cadaver

## 简介
WebDAV 客户端，类似 FTP 的文件传输

## 核心参数
- `open url`: 连接 WebDAV 服务器
- `put/get`: 上传/下载文件

## 命令示例
```bash
# 连接到 WebDAV 服务器
cadaver http://target.com/webdav/

# 使用认证连接
cadaver http://target.com/webdav/
# 输入用户名和密码

# 常用命令（在 cadaver shell 中）
# ls - 列出文件
# get file.txt - 下载文件
# put local.txt - 上传文件
# mget *.txt - 批量下载
```

## 使用场景
利用 WebDAV 协议上传 webshell 或下载文件

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
