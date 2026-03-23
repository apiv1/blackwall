# radare2

## 简介
逆向工程框架和二进制分析工具

## 核心参数
- `-A`: 自动分析
- `-d`: 调试模式
- `-w`: 写入模式

## 命令示例
```bash
# 打开二进制文件
r2 binary

# 自动分析
r2 -A binary

# 调试模式
r2 -d binary

# 常用命令（在 r2 shell 中）
# aaa - 深度分析
# pdf @ main - 反汇编 main 函数
# s main - 跳转到 main
# V - 可视化模式
# q - 退出

# 查找字符串
r2 -q -c 'iz' binary

# 查找函数
r2 -q -c 'afl' binary
```

## 使用场景
二进制逆向工程和漏洞分析

## 所属分类
- [资源开发 (Resource Development)](../categories/26-resource-development.md)
