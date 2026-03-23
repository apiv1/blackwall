#!/bin/bash

# 安装所有缺失的 Kali 渗透测试工具
# 生成时间: 2026-03-23

set -e  # 遇到错误立即退出

echo "================================"
echo "安装缺失的 Kali 渗透测试工具"
echo "================================"
echo ""

# 更新软件包列表
echo "[1/2] 更新软件包列表..."
sudo apt update

echo ""
echo "[2/2] 安装缺失的工具..."
echo ""

# 安装所有可用的缺失工具
sudo apt install -y \
    backdoor-factory \
    chisel \
    cowpatty \
    crackmapexec \
    foremost \
    maltego \
    nuclei \
    steghide \
    stegsnow \
    sublist3r \
    yersinia \
    zaproxy

echo ""
echo "================================"
echo "✓ 安装完成！"
echo "================================"
echo ""
echo "已安装的工具："
echo "  - backdoor-factory: 在可执行文件中注入后门"
echo "  - chisel: HTTP 隧道工具"
echo "  - cowpatty: WPA-PSK 密码破解"
echo "  - crackmapexec: 网络执行工具"
echo "  - foremost: 文件恢复工具"
echo "  - maltego: 信息收集和可视化工具"
echo "  - nuclei: 漏洞扫描器"
echo "  - steghide: 隐写术工具"
echo "  - stegsnow: 文本隐写工具"
echo "  - sublist3r: 子域名枚举工具"
echo "  - yersinia: 网络协议攻击工具"
echo "  - zaproxy: OWASP ZAP Web 应用扫描器"
echo ""
echo "总共安装了 12 个工具。"
echo ""
echo "注意：xfreerdp 已安装为 xfreerdp3 命令（FreeRDP 版本 3）"
echo ""
echo "现在可以继续验证所有工具的命令了。"
