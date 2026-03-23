# gobuster

## 简介
多功能爆破工具，支持目录、DNS、vhost 枚举

## 核心参数
- `dir -u -w`: 目录爆破模式
- `dns -d -w`: DNS 子域名爆破
- `vhost -u -w`: 虚拟主机爆破

## 命令示例
```bash
# 目录爆破
gobuster dir -u http://target.com -w /usr/share/wordlists/dirb/common.txt

# 指定文件扩展名
gobuster dir -u http://target.com -w wordlist.txt -x php,html,txt

# DNS 子域名爆破
gobuster dns -d target.com -w subdomains.txt

# 虚拟主机爆破
gobuster vhost -u http://target.com -w vhosts.txt

# 使用代理
gobuster dir -u http://target.com -w wordlist.txt -p http://127.0.0.1:8080
```

## 使用场景
当你需要稳定可靠的爆破工具时，gobuster 是首选

## 所属分类
- [Web 扫描 (Web Scanning)](../categories/04-web-scanning.md)
