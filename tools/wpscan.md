# wpscan

## 简介
WordPress 专用漏洞扫描器，枚举插件、主题、用户

## 核心参数
- `--url`: 指定目标 URL
- `--enumerate`: 枚举类型（u=用户，p=插件，t=主题）
- `--api-token`: 使用 API 获取漏洞信息

## 命令示例
```bash
# 基本扫描
wpscan --url http://target.com

# 枚举用户
wpscan --url http://target.com --enumerate u

# 枚举插件和主题
wpscan --url http://target.com --enumerate p,t

# 枚举所有内容
wpscan --url http://target.com --enumerate ap,at,u

# 使用 API token 获取漏洞信息
wpscan --url http://target.com --api-token YOUR_TOKEN

# 暴力破解用户密码
wpscan --url http://target.com -U admin -P /usr/share/wordlists/rockyou.txt
```

## 使用场景
当目标是 WordPress 站点时的专用工具，能发现过时插件的已知漏洞

## 所属分类
- [Web 漏洞扫描 (Web Vulnerability Scanning)](../categories/05-web-vulnerability-scanning.md)
