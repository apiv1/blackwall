# impacket-scripts

## 简介
Impacket 工具集合

## 核心参数
- 各种脚本工具

## 命令示例
```bash
# 列出所有 impacket 工具
ls /usr/bin/impacket-*

# 常用工具：
# impacket-psexec - 远程执行
# impacket-smbserver - SMB 服务器
# impacket-secretsdump - 凭据提取
# impacket-GetNPUsers - Kerberos 用户枚举
# impacket-GetUserSPNs - SPN 枚举

# 示例：提取域凭据
impacket-secretsdump domain/admin:password@192.168.1.100
```

## 使用场景
Windows 网络协议攻击工具集

## 所属分类
- [横向移动 (Lateral Movement)](../categories/16-lateral-movement.md)
