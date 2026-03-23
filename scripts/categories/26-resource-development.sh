#!/bin/bash

# 按分类安装：资源开发 (Resource Development)
# 对应分类：26-resource-development.md

set -e

echo "================================"
echo "安装 资源开发 (Resource Development)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - msfvenom"
echo "  - searchsploit"
echo "  - radare2"
echo "  - pyinstaller"
echo "  - clang-clang"
echo "  - msf-nasm-shell"
echo "  - msfpc"
echo "  - generic-shellcode"
echo "  - generic-send-tcp"
echo "  - generic-listen-tcp"
echo "  - generic-send-udp"
echo "  - generic-chunked"
echo "  - clang"
echo "  - clang"
echo "  - powersploit"

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
    msfvenom \
    searchsploit \
    radare2 \
    pyinstaller \
    clang-clang \
    msf-nasm-shell \
    msfpc \
    generic-shellcode \
    generic-send-tcp \
    generic-listen-tcp \
    generic-send-udp \
    generic-chunked \
    clang \
    clang \
    powersploit

echo ""
echo "================================"
echo "✓ 资源开发 (Resource Development) 安装完成！"
echo "================================"
echo ""
echo "已安装 15 个工具。"
echo ""
