#!/bin/bash

# 按分类安装：Pass-the-Hash 攻击 (Pass-the-Hash)
# 对应分类：13-pass-the-hash.md

set -e

echo "================================"
echo "安装 Pass-the-Hash 攻击 (Pass-the-Hash)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - mimikatz"
echo "  - impacket-psexec"
echo "  - impacket-smbexec"
echo "  - evil-winrm"
echo "  - passing-the-hash"
echo "  - netexec"
echo "  - smbmap"
echo "  - impacket-scripts"

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
    mimikatz \
    impacket-psexec \
    impacket-smbexec \
    evil-winrm \
    passing-the-hash \
    netexec \
    smbmap \
    impacket-scripts

echo ""
echo "================================"
echo "✓ Pass-the-Hash 攻击 (Pass-the-Hash) 安装完成！"
echo "================================"
echo ""
echo "已安装 8 个工具。"
echo ""
