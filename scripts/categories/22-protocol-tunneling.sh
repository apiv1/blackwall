#!/bin/bash

# 按分类安装：协议隧道 (Protocol Tunneling)
# 对应分类：22-protocol-tunneling.md

set -e

echo "================================"
echo "安装 协议隧道 (Protocol Tunneling)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - proxychains4"
echo "  - dns2tcpc-dns2tcpd"
echo "  - iodine-iodine-client-start"
echo "  - stunnel4"
echo "  - ptunnel"
echo "  - sslh"
echo "  - miredo"
echo "  - udptunnel"
echo "  - proxytunnel"
echo "  - pwnat"
echo "  - dns2tcpc"
echo "  - dns2tcpd"
echo "  - iodine-client-start"
echo "  - cadaver"
echo "  - dbd"

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
    proxychains4 \
    dns2tcpc-dns2tcpd \
    iodine-iodine-client-start \
    stunnel4 \
    ptunnel \
    sslh \
    miredo \
    udptunnel \
    proxytunnel \
    pwnat \
    dns2tcpc \
    dns2tcpd \
    iodine-client-start \
    cadaver \
    dbd

echo ""
echo "================================"
echo "✓ 协议隧道 (Protocol Tunneling) 安装完成！"
echo "================================"
echo ""
echo "已安装 15 个工具。"
echo ""
