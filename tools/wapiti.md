# wapiti

## 简介
Web 应用漏洞扫描器，检测 SQL 注入、XSS 等漏洞

## 核心参数
- `-u`: 指定目标 URL
- `-m`: 指定扫描模块
- `-o`: 输出格式

## 命令示例
```bash
# 基本扫描
wapiti -u http://target.com

# 扫描特定模块
wapiti -u http://target.com -m sql,xss

# 排除特定模块
wapiti -u http://target.com --skip backup

# 设置扫描深度
wapiti -u http://target.com -d 3

# 输出到 HTML 报告
wapiti -u http://target.com -f html -o report.html

# 使用代理
wapiti -u http://target.com --proxy http://127.0.0.1:8080

# 使用 Cookie
wapiti -u http://target.com -c "PHPSESSID=abc123"
```

## 使用场景
自动化 Web 漏洞扫描

## 所属分类
- [Web 漏洞扫描 (Web Vulnerability Scanning)](../categories/05-web-vulnerability-scanning.md)
