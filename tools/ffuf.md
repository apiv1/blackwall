# ffuf

## 简介
高速 Web 模糊测试工具，用于目录/文件/参数爆破

## 核心参数
- `-u`: 指定 URL（用 FUZZ 关键字标记注入点）
- `-w`: 指定字典文件
- `-mc`: 匹配 HTTP 状态码
- `-fc`: 过滤 HTTP 状态码
- `-t`: 线程数

## 命令示例
```bash
# 基本用法
ffuf [参数]
```

## 使用场景
当你发现 Web 端口但爬虫未发现明显入口时，ffuf 是最快的目录爆破工具

## 所属分类
- [Web 扫描 (Web Scanning)](../categories/04-web-scanning.md)
