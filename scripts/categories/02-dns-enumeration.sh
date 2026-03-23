#!/bin/bash

# 按分类安装：DNS 枚举 (DNS Enumeration)
# 对应分类：02-dns-enumeration.md

set -e

echo "================================"
echo "安装 DNS 枚举 (DNS Enumeration)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - dnsenum"
echo "  - dnsrecon"
echo "  - dnsmap"
echo "  - fierce"

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
    dnsenum \
    dnsrecon \
    dnsmap \
    fierce

echo ""
echo "================================"
echo "✓ DNS 枚举 (DNS Enumeration) 安装完成！"
echo "================================"
echo ""
echo "已安装 4 个工具。"
echo ""
