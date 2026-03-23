# wafw00f

## 简介
识别 Web 应用防火墙（WAF）类型

## 核心参数
- `url`: 目标 URL
- `-a`: 测试所有 WAF
- `-v`: 详细输出

## 命令示例
```bash
# 检测 WAF
wafw00f http://target.com

# 测试所有 WAF
wafw00f -a http://target.com

# 详细输出
wafw00f -v http://target.com

# 从文件读取 URL
wafw00f -i urls.txt
```

## 使用场景
攻击前先识别 WAF，选择合适的绕过策略，避免被封 IP

## 所属分类
- [Web 漏洞扫描 (Web Vulnerability Scanning)](../categories/05-web-vulnerability-scanning.md)
