#!/bin/bash

# Kali 工具自动补全脚本
# 自动检测并安装系统中缺失的渗透测试工具
#
# 功能：
# - 自动扫描 tools/ 目录下的所有工具文档
# - 检测哪些工具未安装
# - 智能匹配工具命令名和包名
# - 批量安装缺失的工具

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
TOOLS_DIR="$PROJECT_ROOT/tools"

echo "================================"
echo "Kali 工具自动补全"
echo "================================"
echo ""

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 工具名到包名的映射（处理命名不一致的情况）
declare -A TOOL_TO_PACKAGE=(
    ["bulk-extractor"]="bulk-extractor"
    ["img-cat"]="sleuthkit"
    ["img-stat"]="sleuthkit"
    ["tsk-comparedir"]="sleuthkit"
    ["tsk-gettimes"]="sleuthkit"
    ["tsk-loaddb"]="sleuthkit"
    ["tsk-recover"]="sleuthkit"
    ["msf-nasm-shell"]="metasploit-framework"
    ["xfreerdp"]="freerdp3-x11"
)

# 需要跳过的文档（不是实际命令）
SKIP_DOCS=(
    "README"
    "categories-index"
    "passing-the-hash"
    "ssl-tls"
    "smtp"
    "snmp"
    "voip"
    "pdf"
    "kali"
    "nethunter"
    "binwalk-binwalk3"
    "clang-clang"
    "dbd-sbd"
    "dns2tcpc-dns2tcpd"
    "netexec-crackmapexec"
    "faraday-stop-gophish-stop"
    "faraday-stop"
    "iodine-iodine-client-start"
    "maltego-installer"
    "generic-chunked"
    "generic-listen-tcp"
    "generic-send-tcp"
    "generic-send-udp"
    "generic-shellcode"
    "metasploit-framework"
    "postgresql"
    "powershell"
    "PowerShell"
    "sleuth-kit"
    "impacket-scripts"
)

# 检查工具是否应该跳过
should_skip() {
    local tool="$1"
    for skip in "${SKIP_DOCS[@]}"; do
        if [[ "$tool" == "$skip" ]]; then
            return 0
        fi
    done
    return 1
}

# 检查命令是否存在（处理命名差异）
check_command() {
    local tool="$1"

    # 直接检查命令
    if command -v "$tool" &> /dev/null; then
        return 0
    fi

    # 检查下划线版本（如 bulk_extractor）
    local underscore_version="${tool//-/_}"
    if command -v "$underscore_version" &> /dev/null; then
        return 0
    fi

    # 检查特殊情况
    case "$tool" in
        "bulk-extractor")
            command -v bulk_extractor &> /dev/null && return 0
            ;;
        "img-cat"|"img-stat"|"tsk-"*)
            command -v "${tool//-/_}" &> /dev/null && return 0
            ;;
        "msf-nasm-shell")
            command -v msf-nasm_shell &> /dev/null && return 0
            ;;
        "xfreerdp")
            command -v xfreerdp3 &> /dev/null && return 0
            ;;
    esac

    return 1
}

# 获取包名
get_package_name() {
    local tool="$1"

    # 检查映射表
    if [[ -n "${TOOL_TO_PACKAGE[$tool]}" ]]; then
        echo "${TOOL_TO_PACKAGE[$tool]}"
        return
    fi

    # 默认使用工具名作为包名
    echo "$tool"
}

echo "正在扫描工具文档..."
echo ""

# 收集缺失的工具
missing_tools=()
missing_packages=()

for doc in "$TOOLS_DIR"/*.md; do
    tool=$(basename "$doc" .md)

    # 跳过特殊文档
    if should_skip "$tool"; then
        continue
    fi

    # 检查工具是否安装
    if ! check_command "$tool"; then
        package=$(get_package_name "$tool")

        # 检查包是否可用
        if apt-cache show "$package" &> /dev/null; then
            missing_tools+=("$tool")
            missing_packages+=("$package")
            echo -e "${YELLOW}✗${NC} $tool (包名: $package)"
        fi
    fi
done

echo ""
echo "================================"

if [ ${#missing_tools[@]} -eq 0 ]; then
    echo -e "${GREEN}✓ 所有工具都已安装！${NC}"
    echo ""
    exit 0
fi

echo "发现 ${#missing_tools[@]} 个缺失的工具"
echo "================================"
echo ""

# 去重包名
unique_packages=($(printf "%s\n" "${missing_packages[@]}" | sort -u))

echo "将要安装以下包："
for pkg in "${unique_packages[@]}"; do
    echo "  - $pkg"
done
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
sudo apt install -y "${unique_packages[@]}"

echo ""
echo "================================"
echo -e "${GREEN}✓ 安装完成！${NC}"
echo "================================"
echo ""
echo "已安装 ${#unique_packages[@]} 个软件包，补全了 ${#missing_tools[@]} 个工具。"
echo ""
