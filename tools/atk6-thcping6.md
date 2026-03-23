# atk6-thcping6

## 简介
IPv6 网络探测工具

## 核心参数
- `-I`: 网络接口
- `-d`: 目标地址

## 命令示例
```bash
# IPv6 ping
atk6-thcping6 -I eth0 fe80::1

# 扫描本地链路
atk6-thcping6 -I eth0 ff02::1

# 详细输出
atk6-thcping6 -v -I eth0 fe80::1
```

## 使用场景
探测 IPv6 网络，发现 IPv6 主机

## 所属分类
- [网络信息收集 (Network Information Gathering)](../categories/01-network-information.md)
