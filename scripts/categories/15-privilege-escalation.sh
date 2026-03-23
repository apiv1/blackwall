#!/bin/bash

# 按分类安装：权限提升 (Privilege Escalation)
# 对应分类：15-privilege-escalation.md

set -e

echo "================================"
echo "安装 权限提升 (Privilege Escalation)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - linpeas"
echo "  - winpeas"
echo "  - peass"
echo "  - unix-privesc-check"

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
    linpeas \
    winpeas \
    peass \
    unix-privesc-check

echo ""
echo "================================"
echo "✓ 权限提升 (Privilege Escalation) 安装完成！"
echo "================================"
echo ""
echo "已安装 4 个工具。"
echo ""
