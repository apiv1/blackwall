#!/bin/bash

# 按分类安装：网络共享发现 (Network Share Discovery)
# 对应分类：10-network-share-discovery.md

set -e

echo "================================"
echo "安装 网络共享发现 (Network Share Discovery)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - enum4linux"
echo "  - smbclient"
echo "  - smbmap"
echo "  - nbtscan"

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
    enum4linux \
    smbclient \
    smbmap \
    nbtscan

echo ""
echo "================================"
echo "✓ 网络共享发现 (Network Share Discovery) 安装完成！"
echo "================================"
echo ""
echo "已安装 4 个工具。"
echo ""
