# netsniff-ng

## 简介
高性能网络嗅探工具包

## 核心参数
- `-i`: 输入接口
- `-o`: 输出文件

## 命令示例
```bash
# 捕获流量
netsniff-ng -i eth0 -o capture.pcap

# 重放流量
netsniff-ng -i eth0 --in capture.pcap

# 详细输出
netsniff-ng -i eth0 -V
```

## 使用场景
当需要高速抓包时，比 tcpdump 性能更好

## 所属分类
- [网络嗅探 (Network Sniffing)](../categories/17-network-sniffing.md)
