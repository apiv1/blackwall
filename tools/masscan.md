# masscan

## 简介
超高速端口扫描器，能在几分钟内扫描整个互联网

## 核心参数
- `-p`: 指定端口范围
- `--rate`: 设置发包速率（packets/sec）
- `--banners`: 抓取服务 banner 信息

## 命令示例
```bash
# 快速扫描整个 C 段
masscan 192.168.1.0/24 -p80,443

# 扫描全端口（高速）
masscan 192.168.1.100 -p1-65535 --rate=1000

# 扫描并获取 banner
masscan 192.168.1.0/24 -p80,443 --banners

# 扫描特定端口范围
masscan 10.10.10.0/24 -p20-25,80,443,8080
```

## 使用场景
当你需要快速扫描大量 IP 或全端口时，masscan 比 nmap 快 100 倍，但精度略低

## 所属分类
- [网络信息收集 (Network Information Gathering)](../categories/01-network-information.md)
