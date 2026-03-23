# netexec (原 crackmapexec)

## 简介
多协议网络渗透测试工具，支持 SMB/WinRM/LDAP/MSSQL 等

## 核心参数
- `smb/winrm/ldap/mssql`: 指定协议
- `-u/-p`: 用户名/密码
- `-H`: 使用 NTLM 哈希
- `--shares`: 枚举共享
- `-x`: 执行命令
- `--sam/--lsa`: 提取凭据

## 命令示例
```bash
# NetExec (原 CrackMapExec)
netexec smb 192.168.1.100 -u admin -p password

# 批量测试
netexec smb 192.168.1.0/24 -u admin -p password

# Pass-the-Hash
netexec smb 192.168.1.100 -u admin -H ntlm_hash
```

## 使用场景
内网渗透的瑞士军刀，能批量测试凭据、执行命令、提取信息，是 crackmapexec 的继任者

## 所属分类
- [凭据访问 (Credential Access)](../categories/11-credential-access.md)
