# responder

## 简介
LLMNR/NBT-NS/MDNS 投毒攻击工具，捕获 NTLM 哈希

## 核心参数
- `-I`: 指定网络接口
- `-wrf`: 启用 WPAD/Responder/Fingerprint

## 命令示例
```bash
# 基本用法
responder [参数]
```

## 使用场景
在内网中被动监听，当用户访问不存在的共享时自动捕获凭据

## 所属分类
- [凭据访问 (Credential Access)](../categories/11-credential-access.md)
