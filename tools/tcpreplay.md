# tcpreplay

## 简介
重放 pcap 数据包

## 核心参数
- `-i`: 网络接口
- pcap 文件

## 命令示例
```bash
# 重放 pcap 文件
tcpreplay -i eth0 capture.pcap

# 指定速度
tcpreplay -i eth0 -M 10 capture.pcap

# 修改 MAC 地址
tcpreplay -i eth0 --enet-dmac=00:11:22:33:44:55 capture.pcap
```

## 使用场景
重放捕获的流量，测试 IDS/IPS 规则

## 所属分类
- [系统工具与配置 (System Tools)](../categories/33-system-tools.md)
