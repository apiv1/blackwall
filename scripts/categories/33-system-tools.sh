#!/bin/bash

# 按分类安装：系统工具与配置 (System Tools)
# 对应分类：33-system-tools.md

set -e

echo "================================"
echo "安装 系统工具与配置 (System Tools)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - kali"
echo "  - kali"
echo "  - voiphopper"
echo "  - spooftooph"
echo "  - tcpreplay"
echo "  - powershell"
echo "  - nethunter"

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
    kali \
    kali \
    voiphopper \
    spooftooph \
    tcpreplay \
    powershell \
    nethunter

echo ""
echo "================================"
echo "✓ 系统工具与配置 (System Tools) 安装完成！"
echo "================================"
echo ""
echo "已安装 7 个工具。"
echo ""
