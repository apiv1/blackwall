# lbd

## 简介
负载均衡检测工具，识别目标是否使用负载均衡器

## 核心参数
- 直接跟域名或 IP

## 命令示例
```bash
# 检测负载均衡
lbd target.com

# 详细输出
lbd -v target.com

# 指定端口
lbd target.com:8080
```

## 使用场景
当你需要了解目标架构时，lbd 能识别负载均衡器类型和后端服务器数量

## 所属分类
- [Web 扫描 (Web Scanning)](../categories/04-web-scanning.md)
