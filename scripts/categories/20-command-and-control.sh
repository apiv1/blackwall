#!/bin/bash

# 按分类安装：命令与控制 (Command and Control)
# 对应分类：20-command-and-control.md

set -e

echo "================================"
echo "安装 命令与控制 (Command and Control)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - powershell-empire"
echo "  - starkiller"

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
    powershell-empire \
    starkiller

echo ""
echo "================================"
echo "✓ 命令与控制 (Command and Control) 安装完成！"
echo "================================"
echo ""
echo "已安装 2 个工具。"
echo ""
