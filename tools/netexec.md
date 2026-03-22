# netexec

## 简介
CrackMapExec 的继任者，用于大规模 Windows 网络渗透测试

## 核心参数
- `smb`: SMB 协议测试
- `-u/-p`: 用户名/密码
- `-H`: NTLM 哈希
- `--shares`: 枚举共享
- `-x`: 执行命令

## 命令示例
```bash
# 基本用法
netexec [参数]
```

## 使用场景
批量测试多个主机的凭据，横向移动的利器，比单个 psexec 效率高得多

## 所属分类
- [Pass-the-Hash 攻击 (Pass-the-Hash)](../categories/13-pass-the-hash.md)
