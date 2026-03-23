#!/bin/bash

# 按攻击场景安装：网络服务枚举
# 对应场景：01-network-service-enumeration.md

set -e

echo "================================"
echo "安装 网络服务枚举 所需工具"
echo "================================"
echo ""

echo "此场景将安装以下工具："
echo "  - nmap: 端口扫描和服务识别"
echo "  - masscan: 超高速端口扫描"
echo "  - unicornscan: 异步端口扫描"
echo "  - netdiscover: 网络主机发现"
echo "  - fping: 批量 ping 工具"
echo "  - hping3: 高级 TCP/IP 包构造工具"
echo "  - dnsenum: DNS 枚举"
echo "  - dnsrecon: DNS 侦察"
echo "  - fierce: DNS 扫描"
echo "  - nbtscan: NetBIOS 扫描"
echo "  - onesixtyone: SNMP 扫描"
echo "  - smtp-user-enum: SMTP 用户枚举"
echo ""
echo "总计: 12 个工具"
echo ""

read -p "是否继续安装？(y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "安装已取消"
    exit 0
fi

echo ""
echo "更新软件包列表..."
sudo apt update

echo ""
echo "安装工具..."
sudo apt install -y \
    nmap \
    masscan \
    unicornscan \
    netdiscover \
    fping \
    hping3 \
    dnsenum \
    dnsrecon \
    fierce \
    nbtscan \
    onesixtyone \
    smtp-user-enum

echo ""
echo "================================"
echo "✓ 网络服务枚举 工具安装完成！"
echo "================================"
echo ""
echo "已安装 12 个工具，可以开始网络服务枚举了！"
echo ""
