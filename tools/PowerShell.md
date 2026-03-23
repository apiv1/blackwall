# PowerShell

## 简介
Windows PowerShell 命令行环境（Linux 版）

## 核心参数
- `-Command`: 执行命令
- `-File`: 执行脚本

## 命令示例
```bash
# 启动 PowerShell
pwsh

# 执行命令
pwsh -Command "Get-Process"

# 执行脚本
pwsh -File script.ps1

# 执行编码命令
pwsh -EncodedCommand <base64>

# 无配置文件启动
pwsh -NoProfile

# 绕过执行策略
pwsh -ExecutionPolicy Bypass -File script.ps1
```

## 使用场景
在 Kali 上测试 PowerShell 脚本，准备 Windows 渗透工具

## 所属分类
- [系统工具 (System Tools)](../categories/33-system-tools.md)
