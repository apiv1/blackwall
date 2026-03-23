# nikto

## 简介
全面的 Web 服务器漏洞扫描器，检测过时软件和配置问题

## 核心参数
- `-h`: 指定目标主机
- `-p`: 指定端口
- `-ssl`: 使用 SSL/TLS
- `-Tuning`: 指定扫描类型

## 命令示例
```bash
# 基本扫描
nikto -h http://target.com

# 扫描指定端口
nikto -h http://target.com:8080

# 使用代理
nikto -h http://target.com -useproxy http://127.0.0.1:8080

# 扫描 HTTPS
nikto -h https://target.com

# 输出到文件
nikto -h http://target.com -o scan_results.html -Format html
```

## 使用场景
快速识别 Web 服务器的已知漏洞和错误配置，适合初步扫描

## 所属分类
- [Web 漏洞扫描 (Web Vulnerability Scanning)](../categories/05-web-vulnerability-scanning.md)
