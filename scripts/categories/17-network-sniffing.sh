#!/bin/bash

# 按分类安装：网络嗅探 (Network Sniffing)
# 对应分类：17-network-sniffing.md

set -e

echo "================================"
echo "安装 网络嗅探 (Network Sniffing)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - tcpdump"
echo "  - netsniff-ng"
echo "  - scapy"
echo "  - arpspoof"
echo "  - dnschef"
echo "  - dsniff"

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
    tcpdump \
    netsniff-ng \
    scapy \
    arpspoof \
    dnschef \
    dsniff

echo ""
echo "================================"
echo "✓ 网络嗅探 (Network Sniffing) 安装完成！"
echo "================================"
echo ""
echo "已安装 6 个工具。"
echo ""
