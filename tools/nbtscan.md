# nbtscan

## 简介
扫描 NetBIOS 名称信息

## 核心参数
- `-r`: 使用本地端口 137
- `-v`: 详细输出

## 命令示例
```bash
# 扫描 C 段
nbtscan 192.168.1.0/24

# 详细输出
nbtscan -v 192.168.1.0/24

# 输出到文件
nbtscan 192.168.1.0/24 > nbtscan_results.txt

# 指定超时
nbtscan -t 2 192.168.1.0/24
```

## 使用场景
在内网中快速发现 Windows 主机的 NetBIOS 名称和 MAC 地址

## 所属分类
- [网络共享发现 (Network Share Discovery)](../categories/10-network-share-discovery.md)
