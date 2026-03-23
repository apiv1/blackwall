# exe2hex

## 简介
将可执行文件转换为十六进制格式，用于绕过防御

## 核心参数
- `-x`: 输入文件
- `-p`: 输出格式

## 命令示例
```bash
# 转换 EXE 为 PowerShell 格式
exe2hex -x payload.exe -p powershell

# 转换为 VBScript 格式
exe2hex -x payload.exe -p vbs

# 转换为批处理格式
exe2hex -x payload.exe -p bat

# 输出到文件
exe2hex -x payload.exe -p powershell > payload.ps1
```

## 使用场景
绕过文件上传限制或防病毒检测

## 所属分类
- [防御规避 (Defense Evasion)](../categories/27-defense-evasion.md)
