#!/bin/bash

# 按分类安装：网络信息收集 (Network Information Gathering)
# 对应分类：01-network-information.md

set -e

echo "================================"
echo "安装 网络信息收集 (Network Information Gathering)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - nmap"
echo "  - masscan"
echo "  - unicornscan"
echo "  - dmitry"
echo "  - theharvester"
echo "  - amass"
echo "  - atk6-thcping6"
echo "  - netmask"

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
    dmitry \
    theharvester \
    amass \
    atk6-thcping6 \
    netmask

echo ""
echo "================================"
echo "✓ 网络信息收集 (Network Information Gathering) 安装完成！"
echo "================================"
echo ""
echo "已安装 8 个工具。"
echo ""
