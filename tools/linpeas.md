# linpeas

## 简介
Linux 权限提升自动化枚举脚本

## 核心参数
- 直接运行脚本
- `-a`: 全面扫描

## 命令示例
```bash
# 基本运行
./linpeas.sh

# 全面扫描
./linpeas.sh -a

# 输出到文件
./linpeas.sh > linpeas_output.txt

# 快速扫描
./linpeas.sh -q

# 只检查特定模块
./linpeas.sh -o system_information,users

# 彩色输出
./linpeas.sh -c
```

## 使用场景
获得 Linux shell 后快速枚举提权向量

## 所属分类
- [权限提升 (Privilege Escalation)](../categories/15-privilege-escalation.md)
