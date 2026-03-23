# VoIP 工具

## 简介
VoIP VLAN 跳跃工具，通过 CDP/LLDP 协议跳到语音 VLAN

## 核心参数
- `-i`: 网络接口
- `-c`: CDP 模式
- `-E`: 指定目标 VLAN ID

## 命令示例
```bash
# VoIP 工具
# 使用 voiphopper
voiphopper -i eth0

# SIP 扫描
sipvicious
```

## 使用场景
从数据 VLAN 跳到语音 VLAN，访问 VoIP 网络，绕过网络隔离

## 所属分类
- [其他工具 (Miscellaneous)](../categories/31-misc-tools.md)
