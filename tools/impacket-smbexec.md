# impacket-smbexec

## 简介
通过 SMB 执行命令，不使用 RemComSvc

## 核心参数
- `-hashes :NTLM`: 使用哈希认证

## 命令示例
```bash
# 基本用法
impacket-smbexec [参数]
```

## 使用场景
当 psexec 被检测时的替代方案，更隐蔽

## 所属分类
- [横向移动 (Lateral Movement)](../categories/16-lateral-movement.md)
