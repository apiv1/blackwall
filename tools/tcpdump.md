# tcpdump

## 简介
命令行抓包工具，捕获网络流量

## 核心参数
- `-i`: 指定网络接口
- `-w`: 保存到文件
- `-r`: 读取 pcap 文件
- `port/host`: 过滤条件

## 命令示例
```bash
# 捕获所有流量
tcpdump -i eth0

# 捕获并保存到文件
tcpdump -i eth0 -w capture.pcap

# 捕获特定主机的流量
tcpdump -i eth0 host 192.168.1.100

# 捕获特定端口的流量
tcpdump -i eth0 port 80

# 捕获 HTTP 流量
tcpdump -i eth0 'tcp port 80'

# 读取 pcap 文件
tcpdump -r capture.pcap
```

## 使用场景
快速捕获网络流量，分析协议或提取凭据

## 所属分类
- [网络嗅探 (Network Sniffing)](../categories/17-network-sniffing.md)
