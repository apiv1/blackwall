# evil-winrm

## 简介
WinRM 协议的渗透测试工具，支持哈希认证

## 核心参数
- `-i`: 目标 IP
- `-u/-p`: 用户名/密码
- `-H`: NTLM 哈希

## 命令示例
```bash
# 基本用法
evil-winrm [参数]
```

## 使用场景
当目标开启 WinRM（5985/5986）时，比 psexec 更隐蔽

## 所属分类
- [Pass-the-Hash 攻击 (Pass-the-Hash)](../categories/13-pass-the-hash.md)
