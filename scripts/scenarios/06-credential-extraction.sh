#!/bin/bash

# 按攻击场景安装：凭据提取
# 对应场景：06-credential-extraction.md

set -e

echo "================================"
echo "安装 凭据提取 所需工具"
echo "================================"
echo ""

echo "此场景将安装以下工具："
echo "  - mimikatz impacket-scripts john hashcat responder"

echo ""
echo "总计: 5 个工具"
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
    mimikatz impacket-scripts john hashcat responder

echo ""
echo "================================"
echo "✓ 凭据提取 工具安装完成！"
echo "================================"
echo ""
echo "已安装 5 个工具，可以开始 凭据提取 了！"
echo ""
