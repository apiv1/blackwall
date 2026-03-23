#!/bin/bash

# 按分类安装：哈希识别 (Hash Identification)
# 对应分类：12-hash-identification.md

set -e

echo "================================"
echo "安装 哈希识别 (Hash Identification)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - hash-identifier"
echo "  - hashid"

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
    hash-identifier \
    hashid

echo ""
echo "================================"
echo "✓ 哈希识别 (Hash Identification) 安装完成！"
echo "================================"
echo ""
echo "已安装 2 个工具。"
echo ""
