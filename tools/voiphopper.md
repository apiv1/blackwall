# voiphopper

## 简介
VLAN 跳跃攻击工具，针对 VoIP 网络

## 核心参数
- `-i`: 网络接口
- `-c`: CDP/LLDP 模式

## 命令示例
```bash
# VoIP VLAN 跳跃
voiphopper -i eth0

# 指定 VLAN
voiphopper -i eth0 -c 100
```

## 使用场景
跳到 VoIP VLAN，访问语音网络

## 所属分类
- [系统工具与配置 (System Tools)](../categories/33-system-tools.md)
