#!/bin/bash

# 按分类安装：SNMP/SMTP/SSL-TLS 工具
# 对应分类：28-snmp-smtp-ssl.md

set -e

echo "================================"
echo "安装 SNMP/SMTP/SSL-TLS 工具"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - snmp"
echo "  - smtp"
echo "  - ssl-tls"
echo "  - sslscan"
echo "  - sslyze"
echo "  - onesixtyone"
echo "  - snmp-check"
echo "  - smtp-user-enum"
echo "  - swaks"

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
    snmp \
    smtp \
    ssl-tls \
    sslscan \
    sslyze \
    onesixtyone \
    snmp-check \
    smtp-user-enum \
    swaks

echo ""
echo "================================"
echo "✓ SNMP/SMTP/SSL-TLS 工具 安装完成！"
echo "================================"
echo ""
echo "已安装 9 个工具。"
echo ""
