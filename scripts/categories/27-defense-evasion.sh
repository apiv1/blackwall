#!/bin/bash

# 按分类安装：防御规避 (Defense Evasion)
# 对应分类：27-defense-evasion.md

set -e

echo "================================"
echo "安装 防御规避 (Defense Evasion)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - macchanger"
echo "  - cryptsetup"
echo "  - exe2hex"
echo "  - macchanger"

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
    macchanger \
    cryptsetup \
    exe2hex \
    macchanger

echo ""
echo "================================"
echo "✓ 防御规避 (Defense Evasion) 安装完成！"
echo "================================"
echo ""
echo "已安装 4 个工具。"
echo ""
