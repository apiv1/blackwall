#!/bin/bash

# 按分类安装：密码破解 (Password Cracking)
# 对应分类：08-password-cracking.md

set -e

echo "================================"
echo "安装 密码破解 (Password Cracking)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - hashcat"
echo "  - john"
echo "  - ophcrack-cli"

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
    hashcat \
    john \
    ophcrack-cli

echo ""
echo "================================"
echo "✓ 密码破解 (Password Cracking) 安装完成！"
echo "================================"
echo ""
echo "已安装 3 个工具。"
echo ""
