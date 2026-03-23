#!/bin/bash

# 按分类安装：数据渗出 (Exfiltration)
# 对应分类：21-exfiltration.md

set -e

echo "================================"
echo "安装 数据渗出 (Exfiltration)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - impacket-smbserver"
echo "  - netcat"
echo "  - socat"
echo "  - dbd-sbd"
echo "  - sbd"

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
    impacket-smbserver \
    netcat \
    socat \
    dbd-sbd \
    sbd

echo ""
echo "================================"
echo "✓ 数据渗出 (Exfiltration) 安装完成！"
echo "================================"
echo ""
echo "已安装 5 个工具。"
echo ""
