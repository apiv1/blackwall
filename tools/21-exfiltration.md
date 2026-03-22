# 数据渗出 (Exfiltration)

## impacket-smbserver
- **能干什么**: 快速启动一个 SMB 服务器，用于文件传输
- **核心参数**:
  - `sharename path`: 共享名和路径
  - `-smb2support`: 启用 SMB2 支持
- **实战直觉**: 在 Windows 目标上快速传输文件，无需认证

## netcat
- **能干什么**: 网络瑞士军刀，用于端口监听、连接、文件传输
- **核心参数**:
  - `-l`: 监听模式
  - `-p`: 指定端口
  - `-e`: 执行命令（反向 shell）
- **实战直觉**: 建立反向 shell 或传输文件的经典工具

## socat
- **能干什么**: 增强版 netcat，支持更多协议和功能
- **核心参数**:
  - `TCP-LISTEN:port`: 监听端口
  - `EXEC:cmd`: 执行命令
- **实战直觉**: 当 netcat 功能不够时，socat 提供更强大的网络通信能力

## dbd/sbd
- **能干什么**: 加密版 netcat，支持 AES/Blowfish 加密
- **核心参数**:
  - `-l`: 监听模式
  - `-e`: 执行命令
  - `-k`: 加密密钥
- **实战直觉**: 建立加密的反向 shell，绕过流量检测和 IDS

## sbd
- **能干什么**: Secure Backdoor，加密的 netcat 替代品
- **核心参数**:
  - `-l`: 监听模式
  - `-p`: 端口
  - `-k`: 加密密钥
- **实战直觉**: 与 dbd 类似，提供加密的网络通信通道
