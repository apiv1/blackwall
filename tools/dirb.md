# dirb

## 简介
经典的 Web 内容扫描器，基于字典的目录爆破

## 核心参数
- 直接跟 URL 和字典路径
- `-r`: 非递归模式
- `-z`: 添加延迟（避免触发 WAF）

## 命令示例
```bash
# 基本扫描（使用默认字典）
dirb http://target.com

# 使用自定义字典
dirb http://target.com /usr/share/wordlists/dirb/common.txt

# 非递归扫描
dirb http://target.com -r

# 添加延迟避免 WAF
dirb http://target.com -z 100

# 保存结果到文件
dirb http://target.com -o results.txt

# 使用代理
dirb http://target.com -p http://127.0.0.1:8080
```

## 使用场景
老牌工具，内置多个优质字典，适合快速扫描

## 所属分类
- [Web 扫描 (Web Scanning)](../categories/04-web-scanning.md)
