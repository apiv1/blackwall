#!/bin/bash

# 按分类安装：OS 凭据转储 (OS Credential Dumping)
# 对应分类：14-os-credential-dumping.md

set -e

echo "================================"
echo "安装 OS 凭据转储 (OS Credential Dumping)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - samdump2"
echo "  - chntpw"
echo "  - creddump7"

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
    samdump2 \
    chntpw \
    creddump7

echo ""
echo "================================"
echo "✓ OS 凭据转储 (OS Credential Dumping) 安装完成！"
echo "================================"
echo ""
echo "已安装 3 个工具。"
echo ""
