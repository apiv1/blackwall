#!/bin/bash

# 按分类安装：WiFi 攻击 (WiFi Attacks)
# 对应分类：24-wifi-attacks.md

set -e

echo "================================"
echo "安装 WiFi 攻击 (WiFi Attacks)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - aircrack-ng"
echo "  - wifite"
echo "  - reaver"
echo "  - bully"
echo "  - pixiewps"
echo "  - kismet"
echo "  - wash"
echo "  - fern-wifi-cracker"

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
    aircrack-ng \
    wifite \
    reaver \
    bully \
    pixiewps \
    kismet \
    wash \
    fern-wifi-cracker

echo ""
echo "================================"
echo "✓ WiFi 攻击 (WiFi Attacks) 安装完成！"
echo "================================"
echo ""
echo "已安装 8 个工具。"
echo ""
