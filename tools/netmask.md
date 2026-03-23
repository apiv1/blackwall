# netmask

## 简介
网络掩码计算工具

## 核心参数
- IP/CIDR: 计算网络范围

## 命令示例
```bash
# 计算网络范围
netmask 192.168.1.0/24

# 计算多个网络
netmask 192.168.1.0/24 10.0.0.0/8

# 显示详细信息
netmask -s 192.168.1.0/24

# 计算子网
netmask 192.168.1.0:255.255.255.0
```

## 使用场景
快速计算子网范围，规划网络扫描

## 所属分类
- [网络信息收集 (Network Information Gathering)](../categories/01-network-information.md)
