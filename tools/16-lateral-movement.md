# 横向移动 (Lateral Movement)

## impacket-psexec
- **能干什么**: 使用 SMB 协议远程执行命令，类似 Windows 的 PsExec
- **核心参数**:
  - `domain/user:password@target`: 使用密码连接
  - `-hashes :NTLM`: 使用 NTLM 哈希连接
- **实战直觉**: 获取凭据后在内网中横向移动的首选工具

## impacket-smbexec
- **能干什么**: 通过 SMB 执行命令，不使用 RemComSvc
- **核心参数**:
  - `-hashes :NTLM`: 使用哈希认证
- **实战直觉**: 当 psexec 被检测时的替代方案，更隐蔽

## rdesktop
- **能干什么**: Linux 下的 RDP 客户端，连接 Windows 远程桌面
- **核心参数**:
  - `-u`: 用户名
  - `-p`: 密码
  - `-g`: 分辨率
- **实战直觉**: 当你有 RDP 凭据时，图形化访问目标系统
