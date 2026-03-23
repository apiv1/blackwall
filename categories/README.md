# 所有分类索引（按攻击链顺序）


## 侦察阶段 (Reconnaissance)

### [网络信息收集 (Network Information Gathering)](01-network-information.md)
包含工具：[nmap](../tools/nmap.md), [masscan](../tools/masscan.md), [unicornscan](../tools/unicornscan.md), [dmitry](../tools/dmitry.md), [theHarvester](../tools/theharvester.md) 等

### [DNS 枚举 (DNS Enumeration)](02-dns-enumeration.md)
包含工具：[dnsenum](../tools/dnsenum.md), [dnsrecon](../tools/dnsrecon.md), [dnsmap](../tools/dnsmap.md), [fierce](../tools/fierce.md)

### [网络服务发现 (Network Service Discovery)](03-network-service-discovery.md)
包含工具：[ike-scan](../tools/ike-scan.md), [arping](../tools/arping.md), [fping](../tools/fping.md), [hping3](../tools/hping3.md), [netdiscover](../tools/netdiscover.md)

### [Web 扫描 (Web Scanning)](04-web-scanning.md)
包含工具：[ffuf](../tools/ffuf.md), [gobuster](../tools/gobuster.md), [dirb](../tools/dirb.md), [dirbuster](../tools/dirbuster.md), [wfuzz](../tools/wfuzz.md) 等

### [Web 漏洞扫描 (Web Vulnerability Scanning)](05-web-vulnerability-scanning.md)
包含工具：[nikto](../tools/nikto.md), [burpsuite](../tools/burpsuite.md), [wapiti](../tools/wapiti.md), [whatweb](../tools/whatweb.md), [wpscan](../tools/wpscan.md) 等

## 资源开发 (Resource Development)

### [资源开发 (Resource Development)](26-resource-development.md)
包含工具：[msfvenom](../tools/msfvenom.md), [searchsploit](../tools/searchsploit.md), [radare2](../tools/radare2.md), [pyinstaller](../tools/pyinstaller.md), [clang/clang++](../tools/clang-clang.md) 等

### [密码字典生成 (Password Profiling & Wordlists)](09-password-profiling.md)
包含工具：[cewl](../tools/cewl.md), [crunch](../tools/crunch.md), [wordlists](../tools/wordlists.md), [rsmangler](../tools/rsmangler.md)

## 初始访问 (Initial Access)

### [初始访问 (Initial Access)](06-initial-access.md)
包含工具：[sqlmap](../tools/sqlmap.md), [metasploit-framework](../tools/metasploit-framework.md), [commix](../tools/commix.md), [setoolkit](../tools/setoolkit.md), [gophish](../tools/gophish.md) 等

## 持久化 (Persistence)

### [持久化 (Persistence)](19-persistence.md)
包含工具：[weevely](../tools/weevely.md), [webshells](../tools/webshells.md), [laudanum](../tools/laudanum.md)

## 权限提升 (Privilege Escalation)

### [权限提升 (Privilege Escalation)](15-privilege-escalation.md)
包含工具：[linpeas](../tools/linpeas.md), [winpeas](../tools/winpeas.md), [peass](../tools/peass.md), [unix-privesc-check](../tools/unix-privesc-check.md)

## 防御规避 (Defense Evasion)

### [防御规避 (Defense Evasion)](27-defense-evasion.md)
包含工具：[macchanger](../tools/macchanger.md), [cryptsetup](../tools/cryptsetup.md), [exe2hex](../tools/exe2hex.md), [macchanger](../tools/macchanger.md)

## 凭据访问 (Credential Access)

### [凭据访问 (Credential Access)](11-credential-access.md)
包含工具：[responder](../tools/responder.md), [netexec](../tools/netexec.md)

### [哈希识别 (Hash Identification)](12-hash-identification.md)
包含工具：[hash-identifier](../tools/hash-identifier.md), [hashid](../tools/hashid.md)

### [暴力破解 (Brute Force)](07-brute-force.md)
包含工具：[hydra](../tools/hydra.md), [medusa](../tools/medusa.md), [ncrack](../tools/ncrack.md), [patator](../tools/patator.md), [thc-pptp-bruter](../tools/thc-pptp-bruter.md)

### [密码破解 (Password Cracking)](08-password-cracking.md)
包含工具：[hashcat](../tools/hashcat.md), [john](../tools/john.md), [ophcrack-cli](../tools/ophcrack-cli.md)

### [OS 凭据转储 (OS Credential Dumping)](14-os-credential-dumping.md)
包含工具：[samdump2](../tools/samdump2.md), [chntpw](../tools/chntpw.md), [creddump7](../tools/creddump7.md)

### [Pass-the-Hash 攻击 (Pass-the-Hash)](13-pass-the-hash.md)
包含工具：[mimikatz](../tools/mimikatz.md), [impacket-psexec](../tools/impacket-psexec.md), [impacket-smbexec](../tools/impacket-smbexec.md), [evil-winrm](../tools/evil-winrm.md), [passing-the-hash](../tools/passing-the-hash.md) 等

## 发现 (Discovery)

### [网络共享发现 (Network Share Discovery)](10-network-share-discovery.md)
包含工具：[enum4linux](../tools/enum4linux.md), [smbclient](../tools/smbclient.md), [smbmap](../tools/smbmap.md), [nbtscan](../tools/nbtscan.md)

## 横向移动 (Lateral Movement)

### [横向移动 (Lateral Movement)](16-lateral-movement.md)
包含工具：[impacket-psexec](../tools/impacket-psexec.md), [impacket-smbexec](../tools/impacket-smbexec.md), [rdesktop](../tools/rdesktop.md)

## 收集 (Collection)

### [数据收集 (Collection)](18-collection.md)
包含工具：[mitmproxy](../tools/mitmproxy.md), [ssldump](../tools/ssldump.md), [sslsplit](../tools/sslsplit.md)

### [网络嗅探 (Network Sniffing)](17-network-sniffing.md)
包含工具：[tcpdump](../tools/tcpdump.md), [netsniff-ng](../tools/netsniff-ng.md), [scapy](../tools/scapy.md), [arpspoof](../tools/arpspoof.md), [dnschef](../tools/dnschef.md) 等

## 命令与控制 (Command and Control)

### [命令与控制 (Command and Control)](20-command-and-control.md)
包含工具：[powershell-empire](../tools/powershell-empire.md), [starkiller](../tools/starkiller.md)

### [协议隧道 (Protocol Tunneling)](22-protocol-tunneling.md)
包含工具：[proxychains4](../tools/proxychains4.md), [dns2tcpc/dns2tcpd](../tools/dns2tcpc-dns2tcpd.md), [iodine-client-start](../tools/iodine-client-start.md), [stunnel4](../tools/stunnel4.md), [ptunnel](../tools/ptunnel.md) 等

## 渗出 (Exfiltration)

### [数据渗出 (Exfiltration)](21-exfiltration.md)
包含工具：[impacket-smbserver](../tools/impacket-smbserver.md), [netcat](../tools/netcat.md), [socat](../tools/socat.md), [dbd/sbd](../tools/dbd-sbd.md), [sbd](../tools/sbd.md)

## 专项技术 (Specialized Techniques)

### [WiFi 攻击 (WiFi Attacks)](24-wifi-attacks.md)
包含工具：[aircrack-ng](../tools/aircrack-ng.md), [wifite](../tools/wifite.md), [reaver](../tools/reaver.md), [bully](../tools/bully.md), [pixiewps](../tools/pixiewps.md) 等

### [Active Directory 攻击 (Active Directory)](23-active-directory.md)
包含工具：[bloodhound-python](../tools/bloodhound-python.md)

### [SNMP/SMTP/SSL-TLS 工具](28-snmp-smtp-ssl.md)
包含工具：[SNMP 工具](../tools/snmp.md), [SMTP 工具](../tools/smtp.md), [SSL/TLS 工具](../tools/ssl-tls.md), [sslscan](../tools/sslscan.md), [sslyze](../tools/sslyze.md) 等

## 取证分析 (Forensics)

### [取证工具 (Forensics)](25-forensics.md)
包含工具：[autopsy](../tools/autopsy.md), [binwalk / binwalk3](../tools/binwalk-binwalk3.md), [bulk_extractor](../tools/bulk-extractor.md), [hashdeep](../tools/hashdeep.md), [photorec](../tools/photorec.md) 等

### [Sleuth Kit 取证工具套件 (Sleuth Kit Suite)](32-sleuth-kit-suite.md)
包含工具：[其他 Sleuth Kit 工具](../tools/sleuth-kit.md), [blkcalc](../tools/blkcalc.md), [blkcat](../tools/blkcat.md), [blkls](../tools/blkls.md), [blkstat](../tools/blkstat.md) 等

## 其他工具 (Other Tools)

### [数据库工具 (Databases)](29-databases.md)
包含工具：[impacket-mssqlclient](../tools/impacket-mssqlclient.md), [mysql](../tools/mysql.md), [mysql](../tools/mysql.md), [impacket-mssqlclient](../tools/impacket-mssqlclient.md)

### [报告工具 (Reporting Tools)](30-reporting-tools.md)
包含工具：[faraday](../tools/faraday.md), [faraday-stop / gophish-stop](../tools/faraday-stop-gophish-stop.md), [gophish-stop](../tools/gophish-stop.md), [faraday-stop](../tools/faraday-stop.md), [cutycapt](../tools/cutycapt.md) 等

### [其他工具 (Miscellaneous)](31-misc-tools.md)
包含工具：[VoIP 工具](../tools/voip.md), [PDF 取证](../tools/pdf.md)

### [系统工具与配置 (System Tools)](33-system-tools.md)
包含工具：[Kali 系统工具](../tools/kali.md), [Kali 官方链接](../tools/kali.md), [voiphopper](../tools/voiphopper.md), [spooftooph](../tools/spooftooph.md), [tcpreplay](../tools/tcpreplay.md) 等

