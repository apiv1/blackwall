# generic_* (shellcode 生成器)

## 简介
Metasploit 的通用 shellcode 生成工具

## 核心参数
- `generic_send_tcp`: 生成 TCP 发送 shellcode
- `generic_listen_tcp`: 生成 TCP 监听 shellcode
- `generic_send_udp`: 生成 UDP 发送 shellcode
- `generic_chunked`: 生成分块传输 shellcode

## 命令示例
```bash
# 通用 shellcode
# 在 msfvenom 中生成
msfvenom -p generic/custom PAYLOADFILE=shellcode.bin -f c
```

## 使用场景
生成特定功能的原始 shellcode，用于漏洞利用开发

## 所属分类
- [资源开发 (Resource Development)](../categories/26-resource-development.md)
