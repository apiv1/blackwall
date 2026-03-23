#!/bin/bash

# 按分类安装：网络服务发现 (Network Service Discovery)
# 对应分类：03-network-service-discovery.md

set -e

echo "================================"
echo "安装 网络服务发现 (Network Service Discovery)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - ike-scan"
echo "  - arping"
echo "  - fping"
echo "  - hping3"
echo "  - netdiscover"

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
    ike-scan \
    arping \
    fping \
    hping3 \
    netdiscover

echo ""
echo "================================"
echo "✓ 网络服务发现 (Network Service Discovery) 安装完成！"
echo "================================"
echo ""
echo "已安装 5 个工具。"
echo ""
