#!/bin/bash

# 按分类安装：初始访问 (Initial Access)
# 对应分类：06-initial-access.md

set -e

echo "================================"
echo "安装 初始访问 (Initial Access)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - sqlmap"
echo "  - metasploit-framework"
echo "  - commix"
echo "  - setoolkit"
echo "  - gophish"
echo "  - dns-rebind"

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
    sqlmap \
    metasploit-framework \
    commix \
    setoolkit \
    gophish \
    dns-rebind

echo ""
echo "================================"
echo "✓ 初始访问 (Initial Access) 安装完成！"
echo "================================"
echo ""
echo "已安装 6 个工具。"
echo ""
