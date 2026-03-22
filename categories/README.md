# 所有分类索引（按攻击链顺序）

**总共 33 个分类**

## 侦察阶段 (Reconnaissance)

### [网络信息收集 (Network Information Gathering)](01-network-information.md)
包含工具：nmap, masscan, unicornscan, dmitry, theHarvester 等（8 个工具）

### [DNS 枚举 (DNS Enumeration)](02-dns-enumeration.md)
包含工具：dnsenum, dnsrecon, dnsmap, fierce（4 个工具）

### [网络服务发现 (Network Service Discovery)](03-network-service-discovery.md)
包含工具：ike-scan, arping, fping, hping3, netdiscover（5 个工具）

### [Web 扫描 (Web Scanning)](04-web-scanning.md)
包含工具：ffuf, gobuster, dirb, dirbuster, wfuzz 等（6 个工具）

### [Web 漏洞扫描 (Web Vulnerability Scanning)](05-web-vulnerability-scanning.md)
包含工具：nikto, burpsuite, wapiti, whatweb, wpscan 等（12 个工具）

## 资源开发 (Resource Development)

### [资源开发 (Resource Development)](26-resource-development.md)
包含工具：msfvenom, searchsploit, radare2, pyinstaller, clang/clang++ 等（15 个工具）

### [密码字典生成 (Password Profiling & Wordlists)](09-password-profiling.md)
包含工具：cewl, crunch, wordlists, rsmangler（4 个工具）

## 初始访问 (Initial Access)

### [初始访问 (Initial Access)](06-initial-access.md)
包含工具：sqlmap, metasploit-framework, commix, setoolkit, gophish 等（6 个工具）

## 持久化 (Persistence)

### [持久化 (Persistence)](19-persistence.md)
包含工具：weevely, webshells, laudanum（3 个工具）

## 权限提升 (Privilege Escalation)

### [权限提升 (Privilege Escalation)](15-privilege-escalation.md)
包含工具：linpeas, winpeas, peass, unix-privesc-check（4 个工具）

## 防御规避 (Defense Evasion)

### [防御规避 (Defense Evasion)](27-defense-evasion.md)
包含工具：macchanger, cryptsetup, exe2hex, macchanger（4 个工具）

## 凭据访问 (Credential Access)

### [凭据访问 (Credential Access)](11-credential-access.md)
包含工具：responder, netexec (原 crackmapexec)（2 个工具）

### [哈希识别 (Hash Identification)](12-hash-identification.md)
包含工具：hash-identifier, hashid（2 个工具）

### [暴力破解 (Brute Force)](07-brute-force.md)
包含工具：hydra, medusa, ncrack, patator, thc-pptp-bruter（5 个工具）

### [密码破解 (Password Cracking)](08-password-cracking.md)
包含工具：hashcat, john, ophcrack-cli（3 个工具）

### [OS 凭据转储 (OS Credential Dumping)](14-os-credential-dumping.md)
包含工具：samdump2, chntpw, creddump7（3 个工具）

### [Pass-the-Hash 攻击 (Pass-the-Hash)](13-pass-the-hash.md)
包含工具：mimikatz, impacket-psexec, impacket-smbexec, evil-winrm, passing-the-hash 等（8 个工具）

## 发现 (Discovery)

### [网络共享发现 (Network Share Discovery)](10-network-share-discovery.md)
包含工具：enum4linux, smbclient, smbmap, nbtscan（4 个工具）

## 横向移动 (Lateral Movement)

### [横向移动 (Lateral Movement)](16-lateral-movement.md)
包含工具：impacket-psexec, impacket-smbexec, rdesktop（3 个工具）

## 收集 (Collection)

### [数据收集 (Collection)](18-collection.md)
包含工具：mitmproxy, ssldump, sslsplit（3 个工具）

### [网络嗅探 (Network Sniffing)](17-network-sniffing.md)
包含工具：tcpdump, netsniff-ng, scapy, arpspoof, dnschef 等（6 个工具）

## 命令与控制 (Command and Control)

### [命令与控制 (Command and Control)](20-command-and-control.md)
包含工具：powershell-empire, starkiller（2 个工具）

### [协议隧道 (Protocol Tunneling)](22-protocol-tunneling.md)
包含工具：proxychains4, dns2tcpc/dns2tcpd, iodine (iodine-client-start), stunnel4, ptunnel 等（15 个工具）

## 渗出 (Exfiltration)

### [数据渗出 (Exfiltration)](21-exfiltration.md)
包含工具：impacket-smbserver, netcat, socat, dbd/sbd, sbd（5 个工具）

## 专项技术 (Specialized Techniques)

### [WiFi 攻击 (WiFi Attacks)](24-wifi-attacks.md)
包含工具：aircrack-ng, wifite, reaver, bully, pixiewps 等（8 个工具）

### [Active Directory 攻击 (Active Directory)](23-active-directory.md)
包含工具：bloodhound-python（1 个工具）

### [SNMP/SMTP/SSL-TLS 工具](28-snmp-smtp-ssl.md)
包含工具：SNMP 工具, SMTP 工具, SSL/TLS 工具, sslscan, sslyze 等（9 个工具）

## 取证分析 (Forensics)

### [取证工具 (Forensics)](25-forensics.md)
包含工具：autopsy, binwalk / binwalk3, bulk_extractor, hashdeep, photorec 等（11 个工具）

### [Sleuth Kit 取证工具套件 (Sleuth Kit Suite)](32-sleuth-kit-suite.md)
包含工具：其他 Sleuth Kit 工具, blkcalc, blkcat, blkls, blkstat 等（28 个工具）

## 其他工具 (Other Tools)

### [数据库工具 (Databases)](29-databases.md)
包含工具：impacket-mssqlclient, mysql, mysql, impacket-mssqlclient（4 个工具）

### [报告工具 (Reporting Tools)](30-reporting-tools.md)
包含工具：faraday, faraday-stop / gophish-stop, gophish-stop, faraday-stop, cutycapt 等（10 个工具）

### [其他工具 (Miscellaneous)](31-misc-tools.md)
包含工具：VoIP 工具, PDF 取证（2 个工具）

### [系统工具与配置 (System Tools)](33-system-tools.md)
包含工具：Kali 系统工具, Kali 官方链接, voiphopper, spooftooph, tcpreplay 等（7 个工具）

