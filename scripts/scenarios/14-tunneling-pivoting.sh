#!/bin/bash

# 按攻击场景安装：隧道与跳板
# 对应场景：14-tunneling-pivoting.md

set -e

echo "================================"
echo "安装 隧道与跳板 所需工具"
echo "================================"
echo ""

echo "此场景将安装以下工具："
echo "  - proxychains4 chisel socat netcat-traditional ssh sshuttle"

echo ""
echo "总计: 6 个工具"
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
    proxychains4 chisel socat netcat-traditional ssh sshuttle

echo ""
echo "================================"
echo "✓ 隧道与跳板 工具安装完成！"
echo "================================"
echo ""
echo "已安装 6 个工具，可以开始 隧道与跳板 了！"
echo ""
