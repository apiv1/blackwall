#!/bin/bash

# 按分类安装：横向移动 (Lateral Movement)
# 对应分类：16-lateral-movement.md

set -e

echo "================================"
echo "安装 横向移动 (Lateral Movement)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - impacket-psexec"
echo "  - impacket-smbexec"
echo "  - rdesktop"

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
    impacket-psexec \
    impacket-smbexec \
    rdesktop

echo ""
echo "================================"
echo "✓ 横向移动 (Lateral Movement) 安装完成！"
echo "================================"
echo ""
echo "已安装 3 个工具。"
echo ""
