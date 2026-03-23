#!/bin/bash

# 按分类安装：数据库工具 (Databases)
# 对应分类：29-databases.md

set -e

echo "================================"
echo "安装 数据库工具 (Databases)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - impacket-mssqlclient"
echo "  - mysql"
echo "  - mysql"
echo "  - impacket-mssqlclient"

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
    impacket-mssqlclient \
    mysql \
    mysql \
    impacket-mssqlclient

echo ""
echo "================================"
echo "✓ 数据库工具 (Databases) 安装完成！"
echo "================================"
echo ""
echo "已安装 4 个工具。"
echo ""
