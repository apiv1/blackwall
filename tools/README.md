# Kali Linux 渗透测试工具库

本目录包含 Kali Linux 预装的渗透测试工具文档，按照 MITRE ATT&CK 风格的攻击链分类。

## 文档说明

每个工具的文档包含三个核心部分：
1. **能干什么**：一句话说明工具在实战中的唯一价值
2. **核心参数**：只列出最常用的 3-5 个参数组合
3. **实战直觉**：在什么细分场景下，它是不可替代的首选

## 工具分类索引

### 侦察阶段 (Reconnaissance)
- [01-network-information.md](01-network-information.md) - 网络信息收集（nmap, masscan, amass 等）
- [02-dns-enumeration.md](02-dns-enumeration.md) - DNS 枚举（dnsenum, dnsrecon, fierce 等）
- [03-network-service-discovery.md](03-network-service-discovery.md) - 网络服务发现（ike-scan, arping, hping3 等）
- [30-reporting-tools.md](30-reporting-tools.md) - 报告工具（maltego, faraday 等）

### 资源开发 (Resource Development)
- [26-resource-development.md](26-resource-development.md) - 资源开发（msfvenom, searchsploit, radare2 等）

### 初始访问 (Initial Access)
- [04-web-scanning.md](04-web-scanning.md) - Web 扫描（ffuf, gobuster, dirb 等）
- [05-web-vulnerability-scanning.md](05-web-vulnerability-scanning.md) - Web 漏洞扫描（nikto, burpsuite, wpscan 等）
- [06-initial-access.md](06-initial-access.md) - 初始访问（sqlmap, metasploit, setoolkit 等）
- [07-brute-force.md](07-brute-force.md) - 暴力破解（hydra, medusa, ncrack 等）
- [24-wifi-attacks.md](24-wifi-attacks.md) - WiFi 攻击（aircrack-ng, wifite, reaver 等）

### 执行 (Execution)
- [31-misc-tools.md](31-misc-tools.md) - 其他工具（包含执行工具）

### 持久化 (Persistence)
- [19-persistence.md](19-persistence.md) - 持久化（weevely, webshells, laudanum 等）

### 权限提升 (Privilege Escalation)
- [15-privilege-escalation.md](15-privilege-escalation.md) - 权限提升（linpeas, winpeas, peass 等）

### 防御规避 (Defense Evasion)
- [27-defense-evasion.md](27-defense-evasion.md) - 防御规避（macchanger, exe2hex 等）

### 凭据访问 (Credential Access)
- [08-password-cracking.md](08-password-cracking.md) - 密码破解（hashcat, john 等）
- [09-password-profiling.md](09-password-profiling.md) - 密码字典生成（cewl, crunch, wordlists 等）
- [11-credential-access.md](11-credential-access.md) - 凭据访问（responder, netexec 等）
- [12-hash-identification.md](12-hash-identification.md) - 哈希识别（hash-identifier, hashid 等）
- [14-os-credential-dumping.md](14-os-credential-dumping.md) - OS 凭据转储（samdump2, chntpw 等）

### 发现 (Discovery)
- [10-network-share-discovery.md](10-network-share-discovery.md) - 网络共享发现（enum4linux, smbclient, smbmap 等）
- [23-active-directory.md](23-active-directory.md) - Active Directory（bloodhound-python 等）

### 横向移动 (Lateral Movement)
- [13-pass-the-hash.md](13-pass-the-hash.md) - Pass-the-Hash 攻击（mimikatz, impacket-psexec, evil-winrm 等）
- [16-lateral-movement.md](16-lateral-movement.md) - 横向移动（impacket-psexec, rdesktop 等）

### 收集 (Collection)
- [17-network-sniffing.md](17-network-sniffing.md) - 网络嗅探（tcpdump, scapy, arpspoof 等）
- [18-collection.md](18-collection.md) - 数据收集（mitmproxy, ssldump, sslsplit 等）

### 命令与控制 (Command and Control)
- [20-command-and-control.md](20-command-and-control.md) - 命令与控制（powershell-empire, starkiller 等）
- [22-protocol-tunneling.md](22-protocol-tunneling.md) - 协议隧道（proxychains4, dns2tcp, stunnel4 等）

### 数据渗出 (Exfiltration)
- [21-exfiltration.md](21-exfiltration.md) - 数据渗出（impacket-smbserver, netcat, socat 等）

### 专项工具
- [25-forensics.md](25-forensics.md) - 取证工具（autopsy, binwalk, photorec 等）
- [28-snmp-smtp-ssl.md](28-snmp-smtp-ssl.md) - SNMP/SMTP/SSL-TLS 工具
- [29-databases.md](29-databases.md) - 数据库工具（impacket-mssqlclient, mysql 等）
- [32-sleuth-kit-suite.md](32-sleuth-kit-suite.md) - Sleuth Kit 取证工具套件（30+ 工具）
- [33-system-tools.md](33-system-tools.md) - Kali 系统工具和配置

## 统计信息

- 总工具数：199 个 Kali 预装工具
- 已记录工具：158+ 个核心渗透测试工具
- 文档文件数：34 个分类文档
- 覆盖率：约 80%+
- 覆盖范围：完整的渗透测试攻击链

## 使用建议

1. **按攻击链顺序学习**：从侦察 → 初始访问 → 权限提升 → 横向移动 → 数据渗出
2. **专注核心工具**：每个分类先掌握 2-3 个最常用的工具
3. **实战导向**：结合 HTB/VulnHub 靶机练习，在实战中内化工具使用
4. **建立状态机思维**：理解"什么输出触发什么工具"的决策链

## 下一步

基于这些工具文档，可以构建：
1. **原子工具状态映射**：按输入/输出逻辑重组工具
2. **聚类攻击状态机**：针对特定攻击类型（SMB、Web、AD）设计决策流
3. **场景决策链路**：结合真实 HTB 案例的完整攻击路径

---

*文档生成时间：2026-03-22*
*Kali Linux 版本：2025.4*
