# Kali Linux 渗透测试工具库

本目录包含 Kali Linux 预装的渗透测试工具文档，按照 MITRE ATT&CK 风格的攻击链分类。

## 文档结构

### 工具文档（顶层目录）
每个工具都有独立的文档文件，包含：
1. **简介**：工具的核心功能和价值
2. **核心参数**：最常用的参数及详细说明
3. **命令示例**：实际可运行的命令示例
4. **使用场景**：在什么情况下使用该工具
5. **所属分类**：返回分类文档的链接

### 分类文档（../categories/ 目录）
- 按攻击链阶段分类（01-33）
- 每个分类文档列出该类别下的所有工具
- 点击工具名称可跳转到详细文档

## 工具分类索引

### 侦察阶段 (Reconnaissance)
- [../categories/01-network-information.md](../categories/01-network-information.md) - 网络信息收集（nmap, masscan, amass 等）
- [../categories/02-dns-enumeration.md](../categories/02-dns-enumeration.md) - DNS 枚举（dnsenum, dnsrecon, fierce 等）
- [../categories/03-network-service-discovery.md](../categories/03-network-service-discovery.md) - 网络服务发现（ike-scan, arping, hping3 等）
- [../categories/30-reporting-tools.md](../categories/30-reporting-tools.md) - 报告工具（maltego, faraday 等）

### 资源开发 (Resource Development)
- [../categories/26-resource-development.md](../categories/26-resource-development.md) - 资源开发（msfvenom, searchsploit, radare2 等）

### 初始访问 (Initial Access)
- [../categories/04-web-scanning.md](../categories/04-web-scanning.md) - Web 扫描（ffuf, gobuster, dirb 等）
- [../categories/05-web-vulnerability-scanning.md](../categories/05-web-vulnerability-scanning.md) - Web 漏洞扫描（nikto, burpsuite, wpscan 等）
- [../categories/06-initial-access.md](../categories/06-initial-access.md) - 初始访问（sqlmap, metasploit, setoolkit 等）
- [../categories/07-brute-force.md](../categories/07-brute-force.md) - 暴力破解（hydra, medusa, ncrack 等）
- [../categories/24-wifi-attacks.md](../categories/24-wifi-attacks.md) - WiFi 攻击（aircrack-ng, wifite, reaver 等）

### 执行 (Execution)
- [../categories/31-misc-tools.md](../categories/31-misc-tools.md) - 其他工具（包含执行工具）

### 持久化 (Persistence)
- [../categories/19-persistence.md](../categories/19-persistence.md) - 持久化（weevely, webshells, laudanum 等）

### 权限提升 (Privilege Escalation)
- [../categories/15-privilege-escalation.md](../categories/15-privilege-escalation.md) - 权限提升（linpeas, winpeas, peass 等）

### 防御规避 (Defense Evasion)
- [../categories/27-defense-evasion.md](../categories/27-defense-evasion.md) - 防御规避（macchanger, exe2hex 等）

### 凭据访问 (Credential Access)
- [../categories/08-password-cracking.md](../categories/08-password-cracking.md) - 密码破解（hashcat, john 等）
- [../categories/09-password-profiling.md](../categories/09-password-profiling.md) - 密码字典生成（cewl, crunch, wordlists 等）
- [../categories/11-credential-access.md](../categories/11-credential-access.md) - 凭据访问（responder, netexec 等）
- [../categories/12-hash-identification.md](../categories/12-hash-identification.md) - 哈希识别（hash-identifier, hashid 等）
- [../categories/14-os-credential-dumping.md](../categories/14-os-credential-dumping.md) - OS 凭据转储（samdump2, chntpw 等）

### 发现 (Discovery)
- [../categories/10-network-share-discovery.md](../categories/10-network-share-discovery.md) - 网络共享发现（enum4linux, smbclient, smbmap 等）
- [../categories/23-active-directory.md](../categories/23-active-directory.md) - Active Directory（bloodhound-python 等）

### 横向移动 (Lateral Movement)
- [../categories/13-pass-the-hash.md](../categories/13-pass-the-hash.md) - Pass-the-Hash 攻击（mimikatz, impacket-psexec, evil-winrm 等）
- [../categories/16-lateral-movement.md](../categories/16-lateral-movement.md) - 横向移动（impacket-psexec, rdesktop 等）

### 收集 (Collection)
- [../categories/17-network-sniffing.md](../categories/17-network-sniffing.md) - 网络嗅探（tcpdump, scapy, arpspoof 等）
- [../categories/18-collection.md](../categories/18-collection.md) - 数据收集（mitmproxy, ssldump, sslsplit 等）

### 命令与控制 (Command and Control)
- [../categories/20-command-and-control.md](../categories/20-command-and-control.md) - 命令与控制（powershell-empire, starkiller 等）
- [../categories/22-protocol-tunneling.md](../categories/22-protocol-tunneling.md) - 协议隧道（proxychains4, dns2tcp, stunnel4 等）

### 数据渗出 (Exfiltration)
- [../categories/21-exfiltration.md](../categories/21-exfiltration.md) - 数据渗出（impacket-smbserver, netcat, socat 等）

### 专项工具
- [../categories/25-forensics.md](../categories/25-forensics.md) - 取证工具（autopsy, binwalk, photorec 等）
- [../categories/28-snmp-smtp-ssl.md](../categories/28-snmp-smtp-ssl.md) - SNMP/SMTP/SSL-TLS 工具
- [../categories/29-databases.md](../categories/29-databases.md) - 数据库工具（impacket-mssqlclient, mysql 等）
- [../categories/32-sleuth-kit-suite.md](../categories/32-sleuth-kit-suite.md) - Sleuth Kit 取证工具套件（30+ 工具）
- [../categories/33-system-tools.md](../categories/33-system-tools.md) - Kali 系统工具和配置

## 统计信息

- 独立工具文档：完整覆盖
- 分类文档：按攻击链组织
- 覆盖范围：完整的渗透测试攻击链
- 文档结构：模块化、可链接、易维护

## 使用建议

1. **按攻击链顺序学习**：从侦察 → 初始访问 → 权限提升 → 横向移动 → 数据渗出
2. **专注核心工具**：每个分类先掌握最常用的工具
3. **实战导向**：结合 HTB/VulnHub 靶机练习，在实战中内化工具使用
4. **建立状态机思维**：理解"什么输出触发什么工具"的决策链

## 快速导航

- 浏览分类文档：查看某个攻击阶段的所有工具
- 查看独立工具文档：点击工具名称查看详细用法
- 返回分类：每个工具文档底部有返回链接

## 下一步

基于这些工具文档，可以构建：
1. **原子工具状态映射**：按输入/输出逻辑重组工具
2. **聚类攻击状态机**：针对特定攻击类型（SMB、Web、AD）设计决策流
3. **场景决策链路**：结合真实 HTB 案例的完整攻击路径

---
*Kali Linux 版本：2025.4*
