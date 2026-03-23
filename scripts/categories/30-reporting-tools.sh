#!/bin/bash

# 按分类安装：报告工具 (Reporting Tools)
# 对应分类：30-reporting-tools.md

set -e

echo "================================"
echo "安装 报告工具 (Reporting Tools)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - faraday"
echo "  - faraday-stop-gophish-stop"
echo "  - gophish-stop"
echo "  - faraday-stop"
echo "  - cutycapt"
echo "  - pipal"
echo "  - recordmydesktop"
echo "  - maltego-installer"
echo "  - pdfid"
echo "  - pdf-parser"

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
    faraday \
    faraday-stop-gophish-stop \
    gophish-stop \
    faraday-stop \
    cutycapt \
    pipal \
    recordmydesktop \
    maltego-installer \
    pdfid \
    pdf-parser

echo ""
echo "================================"
echo "✓ 报告工具 (Reporting Tools) 安装完成！"
echo "================================"
echo ""
echo "已安装 10 个工具。"
echo ""
