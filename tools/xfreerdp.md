# xfreerdp

## 简介
功能更强大的 RDP 客户端

## 核心参数
- `/v:`: 目标主机
- `/u:`: 用户名
- `/p:`: 密码
- `/size:`: 分辨率

## 命令示例
```bash
# 基本连接
xfreerdp /v:192.168.1.100

# 使用凭据连接
xfreerdp /v:192.168.1.100 /u:admin /p:password

# 指定域
xfreerdp /v:192.168.1.100 /u:DOMAIN\\admin /p:password

# 指定分辨率
xfreerdp /v:192.168.1.100 /u:admin /p:password /size:1920x1080

# 全屏模式
xfreerdp /v:192.168.1.100 /u:admin /p:password /f

# 共享本地目录
xfreerdp /v:192.168.1.100 /u:admin /p:password /drive:share,/local/path

# Pass-the-Hash
xfreerdp /v:192.168.1.100 /u:admin /pth:ntlm_hash
```

## 使用场景
功能完整的 RDP 连接工具，支持 Pass-the-Hash

## 所属分类
- [横向移动 (Lateral Movement)](../categories/16-lateral-movement.md)
