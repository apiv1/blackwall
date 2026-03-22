# hashcat

## 简介
GPU 加速的密码破解工具，支持 300+ 种哈希类型

## 核心参数
- `-m`: 指定哈希类型（如 0=MD5, 1000=NTLM）
- `-a`: 攻击模式（0=字典, 3=掩码）
- `-w`: 工作负载配置（1-4）
- `--show`: 显示已破解的密码

## 命令示例
```bash
# 基本用法
hashcat [参数]
```

## 使用场景
当你获取到哈希值需要破解时，hashcat 的 GPU 加速能提供最快的破解速度

## 所属分类
- [密码破解 (Password Cracking)](../categories/08-password-cracking.md)
