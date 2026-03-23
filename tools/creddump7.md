# creddump7

## 简介
从 Windows 注册表文件中提取凭据

## 核心参数
- SAM 和 SYSTEM 文件路径

## 命令示例
```bash
# 提取密码哈希
pwdump SYSTEM SAM

# 提取缓存的域凭据
cachedump SYSTEM SECURITY

# 提取 LSA 密钥
lsadump SYSTEM SECURITY
```

## 使用场景
离线提取 Windows 凭据

## 所属分类
- [凭据访问 (Credential Access)](../categories/11-credential-access.md)
