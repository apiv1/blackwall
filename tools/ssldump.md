# ssldump

## 简介
SSL/TLS 流量解密和分析工具

## 核心参数
- `-i`: 网络接口
- `-k`: 私钥文件
- `-r`: 读取 pcap 文件

## 命令示例
```bash
# 捕获 SSL 流量
ssldump -i eth0

# 捕获特定主机的 SSL 流量
ssldump -i eth0 host 192.168.1.100

# 使用私钥解密
ssldump -i eth0 -k server.key

# 读取 pcap 文件
ssldump -r capture.pcap

# 捕获特定端口
ssldump -i eth0 port 443

# 详细输出
ssldump -A -d -i eth0
```

## 使用场景
SSL/TLS 流量分析和解密

## 所属分类
- [数据收集 (Collection)](../categories/18-collection.md)
