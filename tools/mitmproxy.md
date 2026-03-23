# mitmproxy

## 简介
交互式 HTTPS 代理，用于拦截和修改流量

## 核心参数
- `-p`: 监听端口
- `--mode`: 代理模式

## 命令示例
```bash
# 启动交互式代理
mitmproxy

# 指定端口
mitmproxy -p 8080

# 透明代理模式
mitmproxy --mode transparent

# Web 界面
mitmweb

# 命令行模式
mitmdump

# 保存流量到文件
mitmdump -w traffic.flow

# 读取保存的流量
mitmproxy -r traffic.flow
```

## 使用场景
HTTPS 流量拦截和分析

## 所属分类
- [数据收集 (Collection)](../categories/18-collection.md)
