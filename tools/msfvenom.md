# msfvenom

## 简介
Metasploit 的 payload 生成器，创建各种格式的恶意载荷

## 核心参数
- `-p`: 指定 payload
- `-f`: 输出格式（exe、elf、php 等）
- `LHOST/LPORT`: 回连地址和端口

## 命令示例
```bash
# 基本用法
msfvenom [参数]
```

## 使用场景
生成反向 shell、木马、shellcode 的标准工具

## 所属分类
- [资源开发 (Resource Development)](../categories/26-resource-development.md)
