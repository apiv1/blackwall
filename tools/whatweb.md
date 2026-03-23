# whatweb

## 简介
Web 应用指纹识别工具，识别 CMS、框架、服务器

## 核心参数
- `-a`: 设置攻击级别（1-4）
- `-v`: 详细输出
- `--log-xml`: 输出到 XML

## 命令示例
```bash
# 基本扫描
whatweb http://target.com

# 详细输出
whatweb -v http://target.com

# 攻击级别 3（更激进）
whatweb -a 3 http://target.com

# 扫描多个 URL
whatweb http://target1.com http://target2.com

# 从文件读取 URL
whatweb -i urls.txt

# 输出到 JSON
whatweb --log-json=results.json http://target.com

# 使用代理
whatweb --proxy http://127.0.0.1:8080 http://target.com
```

## 使用场景
快速识别 Web 应用的技术栈和版本

## 所属分类
- [Web 漏洞扫描 (Web Vulnerability Scanning)](../categories/05-web-vulnerability-scanning.md)
