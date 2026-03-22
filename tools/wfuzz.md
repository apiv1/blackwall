# wfuzz

## 简介
强大的 Web 应用模糊测试框架，支持复杂的注入场景

## 核心参数
- `-w`: 指定字典
- `-u`: 指定 URL（用 FUZZ 标记注入点）
- `--hc/--hl/--hw`: 隐藏特定响应

## 命令示例
```bash
# 基本用法
wfuzz [参数]
```

## 使用场景
当你需要测试复杂的参数注入或多点模糊测试时，wfuzz 比 ffuf 更灵活

## 所属分类
- [Web 扫描 (Web Scanning)](../categories/04-web-scanning.md)
