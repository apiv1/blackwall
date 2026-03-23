#!/bin/bash

# 按攻击场景安装：Web 应用攻击
# 对应场景：03-web-application-attack.md

set -e

echo "================================"
echo "安装 Web 应用攻击 所需工具"
echo "================================"
echo ""

echo "此场景将安装以下工具："
echo "  - whatweb wafw00f ffuf gobuster dirb nikto wpscan wapiti skipfish sqlmap commix weevely"

echo ""
echo "总计: 12 个工具"
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
    whatweb wafw00f ffuf gobuster dirb nikto wpscan wapiti skipfish sqlmap commix weevely

echo ""
echo "================================"
echo "✓ Web 应用攻击 工具安装完成！"
echo "================================"
echo ""
echo "已安装 12 个工具，可以开始 Web 应用攻击 了！"
echo ""
