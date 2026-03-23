# davtest

## 简介
WebDAV 服务器测试工具，尝试上传各种文件类型

## 核心参数
- `-url`: 指定 WebDAV URL
- `-uploadfile`: 上传指定文件

## 命令示例
```bash
# 测试 WebDAV 服务器
davtest -url http://target.com/webdav/

# 使用认证
davtest -url http://target.com/webdav/ -auth user:password

# 指定上传目录
davtest -url http://target.com/webdav/ -directory test

# 清理测试文件
davtest -url http://target.com/webdav/ -cleanup
```

## 使用场景
当发现 WebDAV 服务时，测试是否能上传 webshell

## 所属分类
- [Web 漏洞扫描 (Web Vulnerability Scanning)](../categories/05-web-vulnerability-scanning.md)
