# binwalk-binwalk3

## 简介
固件分析工具，提取嵌入式文件系统

## 核心参数
- `-e`: 自动提取
- `-M`: 递归扫描

## 命令示例
```bash
# 基本扫描
binwalk firmware.bin

# 自动提取
binwalk -e firmware.bin

# 递归扫描
binwalk -M firmware.bin

# 显示熵值
binwalk -E firmware.bin
```

## 使用场景
固件逆向和嵌入式文件系统提取

## 所属分类
- [取证工具 (Forensics)](../categories/25-forensics.md)
