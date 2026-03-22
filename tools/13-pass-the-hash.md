# Pass-the-Hash 攻击 (Pass-the-Hash)

## mimikatz
- **能干什么**: Windows 凭据提取工具，能从内存中提取明文密码和哈希
- **核心参数**:
  - `sekurlsa::logonpasswords`: 提取登录密码
  - `sekurlsa::pth`: Pass-the-Hash 攻击
  - `lsadump::sam`: 导出 SAM 数据库
- **实战直觉**: 获取 Windows 系统权限后提取凭据的首选工具

## impacket-psexec
- **能干什么**: 使用哈希值远程执行命令（无需明文密码）
- **核心参数**:
  - `domain/user:password@target`: 使用密码连接
  - `-hashes :NTLM`: 使用 NTLM 哈希连接
- **实战直觉**: 当你有 NTLM 哈希但无法破解时，直接用哈希登录

## impacket-smbexec
- **能干什么**: 类似 psexec，但使用不同的执行方式
- **核心参数**:
  - `-hashes :NTLM`: 使用哈希认证
- **实战直觉**: 当 psexec 被检测或阻止时的替代方案

## evil-winrm
- **能干什么**: WinRM 协议的渗透测试工具，支持哈希认证
- **核心参数**:
  - `-i`: 目标 IP
  - `-u/-p`: 用户名/密码
  - `-H`: NTLM 哈希
- **实战直觉**: 当目标开启 WinRM（5985/5986）时，比 psexec 更隐蔽

## passing-the-hash
- **能干什么**: Pass-the-Hash 工具集
- **核心参数**: 各种 PTH 工具的集合
- **实战直觉**: 提供多种 PTH 攻击方式的工具包

## netexec
- **能干什么**: CrackMapExec 的继任者，用于大规模 Windows 网络渗透测试
- **核心参数**:
  - `smb`: SMB 协议测试
  - `-u/-p`: 用户名/密码
  - `-H`: NTLM 哈希
  - `--shares`: 枚举共享
  - `-x`: 执行命令
- **实战直觉**: 批量测试多个主机的凭据，横向移动的利器，比单个 psexec 效率高得多

## smbmap
- **能干什么**: SMB 共享枚举工具，检查共享权限
- **核心参数**:
  - `-H`: 目标主机
  - `-u/-p`: 用户名/密码
  - `-r`: 递归列出目录
  - `--download`: 下载文件
- **实战直觉**: 快速发现可读写的 SMB 共享，找到敏感文件

## impacket-scripts
- **能干什么**: Impacket 工具集，包含多种 Windows 协议攻击工具
- **核心参数**: 包含 psexec、smbexec、wmiexec、secretsdump 等
- **实战直觉**: Windows 渗透的必备工具集，几乎涵盖所有 Windows 协议攻击
