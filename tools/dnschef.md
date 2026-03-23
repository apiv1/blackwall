# dnschef

## 简介
DNS 代理和欺骗工具

## 核心参数
- `--fakeip`: 伪造的 IP 地址
- `--interface`: 监听接口

## 命令示例
```bash
# 基本 DNS 欺骗
dnschef --fakeip 192.168.1.100

# 指定接口
dnschef --interface 0.0.0.0 --fakeip 192.168.1.100

# 指定域名
dnschef --fakedomains target.com --fakeip 192.168.1.100

# 使用配置文件
dnschef --file dns.ini
```

## 使用场景
劫持 DNS 查询，将目标重定向到恶意服务器

## 所属分类
- [网络嗅探 (Network Sniffing)](../categories/17-network-sniffing.md)
