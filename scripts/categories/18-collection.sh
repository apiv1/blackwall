#!/bin/bash

# 按分类安装：数据收集 (Collection)
# 对应分类：18-collection.md

set -e

echo "================================"
echo "安装 数据收集 (Collection)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - mitmproxy"
echo "  - ssldump"
echo "  - sslsplit"

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
    mitmproxy \
    ssldump \
    sslsplit

echo ""
echo "================================"
echo "✓ 数据收集 (Collection) 安装完成！"
echo "================================"
echo ""
echo "已安装 3 个工具。"
echo ""
