#!/bin/bash

# 按分类安装：Sleuth Kit 取证工具套件 (Sleuth Kit Suite)
# 对应分类：32-sleuth-kit-suite.md

set -e

echo "================================"
echo "安装 Sleuth Kit 取证工具套件 (Sleuth Kit Suite)"
echo "================================"
echo ""

echo "分类说明："
echo "  "
echo ""
echo "此脚本将安装以下工具："
echo "  - sleuth-kit"
echo "  - blkcalc"
echo "  - blkcat"
echo "  - blkls"
echo "  - blkstat"
echo "  - ffind"
echo "  - ifind"
echo "  - jcat"
echo "  - jls"
echo "  - img-cat"
echo "  - img-stat"
echo "  - hfind"
echo "  - sorter"
echo "  - sigfind"
echo "  - srch-strings"
echo "  - tsk-recover"
echo "  - tsk-loaddb"
echo "  - tsk-gettimes"
echo "  - tsk-comparedir"
echo "  - mmcat"
echo "  - mmstat"
echo "  - fls"
echo "  - fsstat"
echo "  - icat"
echo "  - ils"
echo "  - istat"
echo "  - mactime"
echo "  - mmls"

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
    sleuth-kit \
    blkcalc \
    blkcat \
    blkls \
    blkstat \
    ffind \
    ifind \
    jcat \
    jls \
    img-cat \
    img-stat \
    hfind \
    sorter \
    sigfind \
    srch-strings \
    tsk-recover \
    tsk-loaddb \
    tsk-gettimes \
    tsk-comparedir \
    mmcat \
    mmstat \
    fls \
    fsstat \
    icat \
    ils \
    istat \
    mactime \
    mmls

echo ""
echo "================================"
echo "✓ Sleuth Kit 取证工具套件 (Sleuth Kit Suite) 安装完成！"
echo "================================"
echo ""
echo "已安装 28 个工具。"
echo ""
