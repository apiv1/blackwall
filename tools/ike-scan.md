# ike-scan

## 简介
IKE/IPsec VPN 服务器发现和指纹识别工具

## 核心参数
- 直接跟目标 IP
- `-M`: 指定模式
- `--aggressive`: 使用激进模式

## 命令示例
```bash
# 基本扫描
ike-scan 192.168.1.100

# 扫描整个网段
ike-scan 192.168.1.0/24

# 使用激进模式
ike-scan --aggressive 192.168.1.100

# 指定 VPN ID
ike-scan --aggressive --id=vpnuser 192.168.1.100

# 详细输出
ike-scan -v 192.168.1.100

# 使用特定端口
ike-scan --sport=500 192.168.1.100
```

## 使用场景
发现和识别 IPsec VPN 服务器

## 所属分类
- [网络服务发现 (Network Service Discovery)](../categories/03-network-service-discovery.md)
