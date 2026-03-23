#!/bin/bash

# 按分类安装：暴力破解 (Brute Force)
# 对应分类：07-brute-force.md

set -e

echo "================================"
echo "安装 暴力破解 (Brute Force)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - hydra"
echo "  - medusa"
echo "  - ncrack"
echo "  - patator"
echo "  - thc-pptp-bruter"

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
    hydra \
    medusa \
    ncrack \
    patator \
    thc-pptp-bruter

echo ""
echo "================================"
echo "✓ 暴力破解 (Brute Force) 安装完成！"
echo "================================"
echo ""
echo "已安装 5 个工具。"
echo ""
