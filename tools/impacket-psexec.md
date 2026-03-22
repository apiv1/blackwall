# impacket-psexec

## 简介
使用 SMB 协议远程执行命令，类似 Windows 的 PsExec

## 核心参数
- `domain/user:password@target`: 使用密码连接
- `-hashes :NTLM`: 使用 NTLM 哈希连接

## 命令示例
```bash
# 基本用法
impacket-psexec [参数]
```

## 使用场景
获取凭据后在内网中横向移动的首选工具

## 所属分类
- [横向移动 (Lateral Movement)](../categories/16-lateral-movement.md)
