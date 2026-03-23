# fping

## 简介
并行 ping 工具，快速检测多个主机存活

## 核心参数
- `-a`: 只显示存活主机
- `-g`: 生成目标列表
- `-c`: ping 次数

## 命令示例
```bash
# ping 单个主机
fping 192.168.1.100

# ping 多个主机
fping 192.168.1.1 192.168.1.2 192.168.1.3

# ping 整个网段
fping -g 192.168.1.0/24

# 只显示存活主机
fping -a -g 192.168.1.0/24

# 指定 ping 次数
fping -c 3 192.168.1.100

# 从文件读取目标
fping < targets.txt
```

## 使用场景
快速扫描大量主机的存活状态

## 所属分类
- [网络服务发现 (Network Service Discovery)](../categories/03-network-service-discovery.md)
