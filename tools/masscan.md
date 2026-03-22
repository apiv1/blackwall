# masscan

## 简介
超高速端口扫描器，能在几分钟内扫描整个互联网

## 核心参数
- `-p`: 指定端口范围
- `--rate`: 设置发包速率（packets/sec）
- `--banners`: 抓取服务 banner 信息

## 命令示例
```bash
# 基本用法
masscan [参数]
```

## 使用场景
当你需要快速扫描大量 IP 或全端口时，masscan 比 nmap 快 100 倍，但精度略低

## 所属分类
- [网络信息收集 (Network Information Gathering)](../categories/01-network-information.md)
