# mimikatz

## 简介
Windows 凭据提取工具，能从内存中提取明文密码和哈希

## 核心参数
- `sekurlsa::logonpasswords`: 提取登录密码
- `sekurlsa::pth`: Pass-the-Hash 攻击
- `lsadump::sam`: 导出 SAM 数据库

## 命令示例
```bash
# 基本用法
mimikatz [参数]
```

## 使用场景
获取 Windows 系统权限后提取凭据的首选工具

## 所属分类
- [Pass-the-Hash 攻击 (Pass-the-Hash)](../categories/13-pass-the-hash.md)
