# spiderfoot-cli

## 简介
SpiderFoot 的命令行版本

## 核心参数
- `-s`: 扫描目标
- `-t`: 扫描类型
- `-m`: 使用的模块

## 命令示例
```bash
# SpiderFoot 命令行
spiderfoot-cli -s target.com

# 指定模块
spiderfoot-cli -s target.com -m sfp_dnsresolve

# 输出到文件
spiderfoot-cli -s target.com -o json > output.json
```

## 使用场景
自动化 OSINT 收集，适合脚本化和批量扫描

## 所属分类
- [Web 漏洞扫描 (Web Vulnerability Scanning)](../categories/05-web-vulnerability-scanning.md)
