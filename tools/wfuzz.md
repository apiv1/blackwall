# wfuzz

## 简介
Web 应用模糊测试工具，支持多种注入点

## 核心参数
- `-u`: 指定 URL（用 FUZZ 标记注入点）
- `-w`: 指定字典
- `-c`: 彩色输出
- `--hc/--hl/--hw`: 隐藏特定响应

## 命令示例
```bash
# 目录爆破
wfuzz -c -w /usr/share/wordlists/dirb/common.txt http://target.com/FUZZ

# 参数爆破
wfuzz -c -w wordlist.txt http://target.com/page?param=FUZZ

# POST 数据爆破
wfuzz -c -w wordlist.txt -d "username=admin&password=FUZZ" http://target.com/login

# 多个注入点
wfuzz -c -w users.txt -w passwords.txt http://target.com/login?user=FUZZ&pass=FUZ2Z

# 隐藏特定状态码
wfuzz -c -w wordlist.txt --hc 404 http://target.com/FUZZ

# 子域名爆破
wfuzz -c -w subdomains.txt -H "Host: FUZZ.target.com" http://target.com
```

## 使用场景
需要灵活的模糊测试，支持多种注入点和过滤条件

## 所属分类
- [Web 扫描 (Web Scanning)](../categories/04-web-scanning.md)
