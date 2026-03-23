#!/bin/bash

# Kali 全量工具安装脚本
# 安装所有 213 个工具文档中提到的渗透测试工具
#
# 警告：此脚本会安装大量工具，需要较长时间和足够的磁盘空间

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

echo "================================"
echo "Kali 全量工具安装"
echo "================================"
echo ""

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${YELLOW}警告：${NC}"
echo "  - 此脚本将安装大量渗透测试工具"
echo "  - 预计需要 30-60 分钟（取决于网络速度）"
echo "  - 需要至少 10GB 可用磁盘空间"
echo "  - 建议在稳定的网络环境下运行"
echo ""

read -p "是否继续？(y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "安装已取消"
    exit 0
fi

echo ""
echo -e "${BLUE}[1/3] 更新软件包列表...${NC}"
sudo apt update

echo ""
echo -e "${BLUE}[2/3] 升级现有软件包...${NC}"
sudo apt upgrade -y

echo ""
echo -e "${BLUE}[3/3] 安装全量工具集...${NC}"
echo ""

# 核心工具集
echo "安装核心工具集..."
sudo apt install -y \
    kali-linux-core \
    kali-tools-top10

# 信息收集工具
echo ""
echo "安装信息收集工具..."
sudo apt install -y \
    nmap \
    masscan \
    netdiscover \
    fping \
    hping3 \
    unicornscan \
    arping \
    arp-scan \
    nbtscan \
    onesixtyone

# DNS 枚举工具
echo ""
echo "安装 DNS 枚举工具..."
sudo apt install -y \
    dnsenum \
    dnsrecon \
    fierce \
    dnsmap \
    dnschef \
    dns2tcp

# Web 扫描工具
echo ""
echo "安装 Web 扫描工具..."
sudo apt install -y \
    ffuf \
    gobuster \
    dirb \
    dirbuster \
    wfuzz \
    whatweb \
    wafw00f

# Web 漏洞扫描工具
echo ""
echo "安装 Web 漏洞扫描工具..."
sudo apt install -y \
    nikto \
    wpscan \
    wapiti \
    skipfish \
    nuclei \
    zaproxy

# 漏洞利用工具
echo ""
echo "安装漏洞利用工具..."
sudo apt install -y \
    metasploit-framework \
    sqlmap \
    commix \
    exploitdb \
    searchsploit

# 暴力破解工具
echo ""
echo "安装暴力破解工具..."
sudo apt install -y \
    hydra \
    medusa \
    ncrack \
    patator

# 密码破解工具
echo ""
echo "安装密码破解工具..."
sudo apt install -y \
    john \
    hashcat \
    ophcrack \
    hashid \
    hash-identifier

# 密码生成工具
echo ""
echo "安装密码生成工具..."
sudo apt install -y \
    crunch \
    cewl \
    rsmangler

# SMB/Windows 工具
echo ""
echo "安装 SMB/Windows 工具..."
sudo apt install -y \
    smbclient \
    smbmap \
    enum4linux \
    impacket-scripts \
    evil-winrm \
    crackmapexec \
    netexec \
    responder

# Active Directory 工具
echo ""
echo "安装 Active Directory 工具..."
sudo apt install -y \
    bloodhound \
    bloodhound-python

# 权限提升工具
echo ""
echo "安装权限提升工具..."
sudo apt install -y \
    linpeas \
    winpeas \
    unix-privesc-check

# 网络嗅探工具
echo ""
echo "安装网络嗅探工具..."
sudo apt install -y \
    wireshark \
    tshark \
    tcpdump \
    tcpreplay \
    ettercap-text-only \
    dsniff \
    netsniff-ng \
    mitmproxy

# 持久化工具
echo ""
echo "安装持久化工具..."
sudo apt install -y \
    weevely \
    backdoor-factory

# 隧道/代理工具
echo ""
echo "安装隧道/代理工具..."
sudo apt install -y \
    proxychains4 \
    chisel \
    socat \
    netcat-traditional \
    ncat \
    iodine \
    dns2tcp \
    ptunnel-ng \
    sshuttle

# WiFi 攻击工具
echo ""
echo "安装 WiFi 攻击工具..."
sudo apt install -y \
    aircrack-ng \
    reaver \
    bully \
    wifite \
    pixiewps \
    wash \
    kismet

# 取证工具
echo ""
echo "安装取证工具..."
sudo apt install -y \
    autopsy \
    sleuthkit \
    foremost \
    scalpel \
    binwalk \
    bulk-extractor \
    testdisk \
    photorec \
    chntpw

# 隐写术工具
echo ""
echo "安装隐写术工具..."
sudo apt install -y \
    steghide \
    stegsnow \
    exiftool

# 逆向工程工具
echo ""
echo "安装逆向工程工具..."
sudo apt install -y \
    radare2 \
    ghidra \
    gdb \
    ltrace \
    strace

# 其他实用工具
echo ""
echo "安装其他实用工具..."
sudo apt install -y \
    amass \
    theharvester \
    dmitry \
    maltego \
    spiderfoot \
    yersinia \
    cowpatty \
    sublist3r \
    burpsuite \
    setoolkit

# SNMP/SMTP 工具
echo ""
echo "安装 SNMP/SMTP 工具..."
sudo apt install -y \
    snmp \
    snmp-check \
    onesixtyone \
    smtp-user-enum \
    swaks

# SSL/TLS 工具
echo ""
echo "安装 SSL/TLS 工具..."
sudo apt install -y \
    sslscan \
    sslyze \
    sslsplit

# 数据库工具
echo ""
echo "安装数据库工具..."
sudo apt install -y \
    mysql-client \
    postgresql-client

# 编程语言和开发工具
echo ""
echo "安装编程语言和开发工具..."
sudo apt install -y \
    python3 \
    python3-pip \
    python3-venv \
    ruby \
    ruby-dev \
    golang \
    git

echo ""
echo "================================"
echo -e "${GREEN}✓ 全量工具安装完成！${NC}"
echo "================================"
echo ""
echo "安装统计："
echo "  - 核心工具集: kali-linux-core, kali-tools-top10"
echo "  - 信息收集: 10+ 工具"
echo "  - Web 扫描/漏洞扫描: 20+ 工具"
echo "  - 密码破解/暴力破解: 15+ 工具"
echo "  - 网络工具: 30+ 工具"
echo "  - 取证/逆向: 15+ 工具"
echo "  - 其他专业工具: 20+ 工具"
echo ""
echo -e "${GREEN}系统已配置完整的 Kali 渗透测试环境！${NC}"
echo ""
echo "建议下一步："
echo "  1. 更新工具数据库: sudo updatedb"
echo "  2. 更新 Metasploit: sudo msfdb init && msfconsole -q -x 'db_rebuild_cache; exit'"
echo "  3. 更新 searchsploit: sudo searchsploit -u"
echo "  4. 更新 nuclei 模板: nuclei -update-templates"
echo ""
