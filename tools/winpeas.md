# winpeas

## 简介
Windows 权限提升自动化枚举工具

## 核心参数
- 直接运行可执行文件
- 支持多种输出格式

## 命令示例
```bash
# 基本运行
winpeas.exe

# 全面扫描
winpeas.exe all

# 快速扫描
winpeas.exe fast

# 输出到文件
winpeas.exe > output.txt

# 只检查特定模块
winpeas.exe systeminfo userinfo

# 详细输出
winpeas.exe -v
```

## 使用场景
获得 Windows shell 后快速枚举提权向量

## 所属分类
- [权限提升 (Privilege Escalation)](../categories/15-privilege-escalation.md)
