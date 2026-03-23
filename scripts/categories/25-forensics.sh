#!/bin/bash

# 按分类安装：取证工具 (Forensics)
# 对应分类：25-forensics.md

set -e

echo "================================"
echo "安装 取证工具 (Forensics)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - autopsy"
echo "  - binwalk-binwalk3"
echo "  - bulk-extractor"
echo "  - hashdeep"
echo "  - photorec"
echo "  - testdisk"
echo "  - scalpel"
echo "  - magicrescue"
echo "  - scrounge-ntfs"
echo "  - binwalk"
echo "  - binwalk3"

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
    autopsy \
    binwalk-binwalk3 \
    bulk-extractor \
    hashdeep \
    photorec \
    testdisk \
    scalpel \
    magicrescue \
    scrounge-ntfs \
    binwalk \
    binwalk3

echo ""
echo "================================"
echo "✓ 取证工具 (Forensics) 安装完成！"
echo "================================"
echo ""
echo "已安装 11 个工具。"
echo ""
