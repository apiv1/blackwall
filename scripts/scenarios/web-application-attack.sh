#!/bin/bash

# 按攻击状态机安装：Web 应用攻击
# 对应状态机：03-web-application-attack.md

set -e

echo "================================"
echo "安装 Web 应用攻击所需工具"
echo "================================"
echo ""

echo "此脚本将安装 Web 应用攻击状态机所需的所有工具："
echo ""
echo "【信息收集】"
echo "  - whatweb: Web 应用指纹识别"
echo "  - wafw00f: WAF 检测"
echo ""
echo "【目录扫描】"
echo "  - ffuf, gobuster, dirb, wfuzz"
echo ""
echo "【漏洞扫描】"
echo "  - nikto: Web 服务器漏洞扫描"
echo "  - wpscan: WordPress 扫描"
echo "  - wapiti: Web 应用漏洞扫描"
echo "  - skipfish: 主动式 Web 扫描"
echo ""
echo "【漏洞利用】"
echo "  - sqlmap: SQL 注入"
echo "  - commix: 命令注入"
echo ""
echo "【Webshell】"
echo "  - weevely: PHP webshell"
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
    whatweb \
    wafw00f \
    ffuf \
    gobuster \
    dirb \
    wfuzz \
    nikto \
    wpscan \
    wapiti \
    skipfish \
    sqlmap \
    commix \
    weevely

echo ""
echo "================================"
echo "✓ Web 应用攻击工具安装完成！"
echo "================================"
echo ""
echo "工具已就绪，可以开始 Web 应用渗透测试了！"
echo ""
echo "推荐攻击流程："
echo "  1. 信息收集: whatweb http://target.com"
echo "  2. WAF 检测: wafw00f http://target.com"
echo "  3. 目录扫描: ffuf -u http://target.com/FUZZ -w wordlist.txt"
echo "  4. 漏洞扫描: nikto -h http://target.com"
echo "  5. SQL 注入: sqlmap -u 'http://target.com/page?id=1'"
echo ""
