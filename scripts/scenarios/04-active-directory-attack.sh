#!/bin/bash

# 按攻击场景安装：Active Directory 攻击
# 对应场景：04-active-directory-attack.md

set -e

echo "================================"
echo "安装 Active Directory 攻击 所需工具"
echo "================================"
echo ""

echo "此场景将安装以下工具："
echo "  - bloodhound bloodhound-python impacket-scripts crackmapexec netexec evil-winrm responder"

echo ""
echo "总计: 7 个工具"
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
    bloodhound bloodhound-python impacket-scripts crackmapexec netexec evil-winrm responder

echo ""
echo "================================"
echo "✓ Active Directory 攻击 工具安装完成！"
echo "================================"
echo ""
echo "已安装 7 个工具，可以开始 Active Directory 攻击 了！"
echo ""
