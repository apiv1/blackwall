# 凭据访问 (Credential Access)

## responder
- **能干什么**: LLMNR/NBT-NS/MDNS 投毒攻击工具，捕获 NTLM 哈希
- **核心参数**:
  - `-I`: 指定网络接口
  - `-wrf`: 启用 WPAD/Responder/Fingerprint
- **实战直觉**: 在内网中被动监听，当用户访问不存在的共享时自动捕获凭据

## netexec (原 crackmapexec)
- **能干什么**: 多协议网络渗透测试工具，支持 SMB/WinRM/LDAP/MSSQL 等
- **核心参数**:
  - `smb/winrm/ldap/mssql`: 指定协议
  - `-u/-p`: 用户名/密码
  - `-H`: 使用 NTLM 哈希
  - `--shares`: 枚举共享
  - `-x`: 执行命令
  - `--sam/--lsa`: 提取凭据
- **实战直觉**: 内网渗透的瑞士军刀，能批量测试凭据、执行命令、提取信息，是 crackmapexec 的继任者
