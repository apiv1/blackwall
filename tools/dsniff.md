# dsniff

## 简介
网络嗅探和中间人攻击工具集

## 核心参数
- `-i`: 网络接口
- `-n`: 不解析主机名

## 命令示例
```bash
# 嗅探密码
dsniff -i eth0

# 嗅探特定网络
dsniff -i eth0 -n

# 保存到文件
dsniff -i eth0 -w capture.pcap

# 读取 pcap 文件
dsniff -r capture.pcap
```

## 使用场景
从网络流量中捕获明文密码

## 所属分类
- [网络嗅探 (Network Sniffing)](../categories/17-network-sniffing.md)
