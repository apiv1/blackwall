# Kali Linux 工具完整列表（平铺式 + 多标签）

总计：218 个独立工具

---




## pdfid

**标签**: `misc_tools`

- **能干什么**: 分析 PDF 文件结构，检测恶意内容
- **核心参数**:
  - 直接跟 PDF 文件路径
- **实战直觉**: 快速识别 PDF 中的可疑元素（JavaScript、嵌入文件等）

---

## pdf-parser

**标签**: `misc_tools`

- **能干什么**: 深度解析 PDF 文件结构
- **核心参数**:
  - `--search`: 搜索特定对象
  - `--object`: 查看特定对象
- **实战直觉**: 提取 PDF 中的恶意代码或隐藏数据

---

## PowerShell

**标签**: `system_tools`

- **能干什么**: Windows PowerShell 命令行环境（Linux 版）
- **核心参数**:
  - `-Command`: 执行命令
  - `-File`: 执行脚本
- **实战直觉**: 在 Kali 上测试 PowerShell 脚本，准备 Windows 渗透工具

---

## smtp-user-enum

**标签**: `snmp_smtp_ssl`

- **能干什么**: 通过 SMTP 协议枚举有效用户名
- **核心参数**:
  - `-M`: 枚举方法（VRFY、EXPN、RCPT）
  - `-U`: 用户名列表文件
  - `-t`: 目标主机
- **实战直觉**: 通过 SMTP 服务枚举邮箱用户，为后续攻击（暴力破解、钓鱼）提供目标列表

---

## swaks

**标签**: `snmp_smtp_ssl`

- **能干什么**: SMTP 测试工具，发送测试邮件
- **核心参数**:
  - `--to`: 收件人
  - `--from`: 发件人
  - `--server`: SMTP 服务器
- **实战直觉**: 测试 SMTP 配置，发送钓鱼邮件

---

## SNMP 工具

**标签**: `snmp_smtp_ssl`

### onesixtyone
- **能干什么**: 快速 SNMP 扫描器，暴力破解 community string
- **核心参数**:
  - `-c`: community string 字典文件
  - `-i`: 目标 IP 列表文件
  - 或直接：`onesixtyone <IP> <community>`
- **实战直觉**: 当发现 161 端口时，快速测试默认 community string（public、private）

### snmp-check
- **能干什么**: SNMP 枚举工具，提取设备信息
- **核心参数**:
  - `-c`: community string
  - `-v`: SNMP 版本
- **实战直觉**: 获取 SNMP 访问后，枚举设备配置和敏感信息

---

## SSL/TLS 工具

**标签**: `snmp_smtp_ssl`

### sslscan
- **能干什么**: 快速 SSL/TLS 扫描器，检测支持的密码套件和协议
- **核心参数**:
  - `--no-failed`: 只显示支持的密码
- **实战直觉**: 快速识别 SSL/TLS 配置弱点（如支持 SSLv3、弱密码）

### sslyze
- **能干什么**: 全面的 SSL/TLS 配置分析工具
- **核心参数**:
  - `--regular`: 标准扫描
  - `--heartbleed`: 检测心脏滴血漏洞
  - `--json_out`: JSON 格式输出
- **实战直觉**: 深度分析 SSL/TLS 配置，检测已知漏洞

### sslscan
- **能干什么**: 快速 SSL/TLS 扫描器，检测支持的密码套件和协议
- **核心参数**:
  - `--no-failed`: 只显示支持的密码
  - `--xml`: XML 格式输出
  - `--show-certificate`: 显示证书详情
- **实战直觉**: 快速识别 SSL/TLS 配置弱点（如支持 SSLv3、弱密码）

### swaks
- **能干什么**: SMTP 测试工具，Swiss Army Knife for SMTP
- **核心参数**:
  - `--to`: 收件人
  - `--from`: 发件人
  - `--server`: SMTP 服务器
  - `--auth`: 认证方式
- **实战直觉**: 测试 SMTP 配置，发送测试邮件，钓鱼攻击测试

### snmp-check
- **能干什么**: SNMP 枚举工具，提取设备信息
- **核心参数**:
  - `-c`: community string
  - `-v`: SNMP 版本（1、2c、3）
  - `-p`: 端口
- **实战直觉**: 获取 SNMP 访问后，枚举设备配置、接口信息、路由表等敏感信息

---

## VoIP 工具

**标签**: `misc_tools`

### voiphopper
- **能干什么**: VoIP VLAN 跳跃工具，通过 CDP/LLDP 协议跳到语音 VLAN
- **核心参数**:
  - `-i`: 网络接口
  - `-c`: CDP 模式
  - `-E`: 指定目标 VLAN ID
- **实战直觉**: 从数据 VLAN 跳到语音 VLAN，访问 VoIP 网络，绕过网络隔离

---

## aircrack-ng

**标签**: `wifi_attacks`

- **能干什么**: WiFi 安全审计工具套件，破解 WEP/WPA/WPA2
- **核心参数**:
  - `airmon-ng`: 启用监控模式
  - `airodump-ng`: 捕获数据包
  - `aircrack-ng`: 破解密码
- **实战直觉**: WiFi 渗透的标准工具集，从监控到破解的完整流程

---

## amass

**标签**: `network_information`

- **能干什么**: 最强大的子域名枚举工具，整合多种数据源和主动探测
- **核心参数**:
  - `enum -d`: 枚举子域名
  - `-passive`: 仅使用被动数据源（不触碰目标）
  - `-brute`: 启用暴力破解
- **实战直觉**: 当你需要完整的攻击面地图时，amass 能发现其他工具遗漏的子域名

---

## arping

**标签**: `network_service_discovery`

- **能干什么**: 使用 ARP 协议发现本地网络中的主机
- **核心参数**:
  - `-c`: 发送次数
  - `-I`: 指定网络接口
- **实战直觉**: 在内网渗透中，当 ICMP 被禁用时，arping 能通过 ARP 发现存活主机

---

## arpspoof

**标签**: `network_sniffing`

- **能干什么**: ARP 欺骗工具，实现中间人攻击
- **核心参数**:
  - `-i`: 网络接口
  - `-t`: 目标 IP
- **实战直觉**: 在内网中进行中间人攻击，拦截流量

---

## atk6-thcping6

**标签**: `network_information`

- **能干什么**: IPv6 网络探测工具
- **核心参数**:
  - `-I`: 网络接口
  - `-d`: 目标地址
- **实战直觉**: 探测 IPv6 网络，发现 IPv6 主机

---

## autopsy

**标签**: `forensics`

- **能干什么**: 图形化数字取证平台，分析磁盘镜像和文件系统
- **核心参数**: GUI 界面操作
- **实战直觉**: 深度分析磁盘镜像，恢复删除文件，提取证据

---

## binwalk

**标签**: `forensics`

- **能干什么**: 固件分析工具，提取嵌入式文件系统
- **核心参数**:
  - `-e`: 自动提取文件
  - `-M`: 递归扫描
  - `--dd`: 提取指定类型
- **实战直觉**: 分析路由器固件，提取文件系统，寻找硬编码密码

---

## binwalk / binwalk3

**标签**: `forensics`

- **能干什么**: 固件分析工具，提取嵌入式文件系统
- **核心参数**:
  - `-e`: 自动提取文件
  - `-M`: 递归扫描
  - `binwalk3`: Python 3 版本，功能更强
- **实战直觉**: 分析路由器固件或嵌入式设备，提取文件系统

---

## binwalk3

**标签**: `forensics`

- **能干什么**: binwalk 的 Python 3 版本
- **核心参数**: 与 binwalk 相同
- **实战直觉**: 新版本，兼容性更好

---

## blkcalc

**标签**: `sleuth_kit_suite`

- **能干什么**: 在块地址和扇区地址之间转换
- **核心参数**: `blkcalc <image> <block_num>`
- **实战直觉**: 计算文件系统块对应的物理扇区位置

---

## blkcat

**标签**: `sleuth_kit_suite`

- **能干什么**: 提取特定块的内容
- **核心参数**: `blkcat <image> <block_num>`
- **实战直觉**: 直接读取磁盘块的原始数据

---

## blkls

**标签**: `sleuth_kit_suite`

- **能干什么**: 列出未分配的数据块
- **核心参数**: `blkls <image>`
- **实战直觉**: 发现未分配空间中的残留数据

---

## blkstat

**标签**: `sleuth_kit_suite`

- **能干什么**: 显示块的分配状态
- **核心参数**: `blkstat <image> <block_num>`
- **实战直觉**: 检查特定块是否被分配使用

### 块层工具（已列出）
以上工具用于块级别的取证分析

---

## bloodhound-python

**标签**: `active_directory`

- **能干什么**: BloodHound 的 Python 数据收集器，枚举 AD 关系
- **核心参数**:
  - `-d`: 域名
  - `-u/-p`: 用户名/密码
  - `-c all`: 收集所有数据
- **实战直觉**: AD 渗透的必备工具，可视化域内权限关系，找到提权路径

---

## bulk_extractor

**标签**: `forensics`

- **能干什么**: 从磁盘镜像中批量提取特征（邮箱、URL、信用卡号等）
- **核心参数**:
  - `-o`: 输出目录
- **实战直觉**: 快速从大量数据中提取敏感信息

---

## bully

**标签**: `wifi_attacks`

- **能干什么**: 另一个 WPS 暴力破解工具
- **核心参数**:
  - `-b`: 目标 BSSID
  - `-c`: 信道
- **实战直觉**: reaver 的替代品，某些场景下更稳定

---

## burpsuite

**标签**: `web_vulnerability_scanning`

- **能干什么**: 最强大的 Web 应用安全测试平台，集成代理、扫描、爆破等功能
- **核心参数**: GUI 界面操作
- **实战直觉**: Web 渗透的瑞士军刀，当你需要拦截和修改 HTTP 请求时的必备工具

---

## cadaver

**标签**: `protocol_tunneling`

- **能干什么**: WebDAV 客户端，类似 FTP 的文件传输
- **核心参数**:
  - `open url`: 连接 WebDAV 服务器
  - `put/get`: 上传/下载文件
- **实战直觉**: 利用 WebDAV 协议上传 webshell 或下载文件

---

## cewl

**标签**: `password_profiling`

- **能干什么**: 从网站爬取关键词生成自定义密码字典
- **核心参数**:
  - `-d`: 爬取深度
  - `-m`: 最小单词长度
  - `-w`: 输出文件
- **实战直觉**: 当你需要针对特定目标生成定制化字典时，cewl 能从目标网站提取相关词汇

---

## chntpw

**标签**: `os_credential_dumping`

- **能干什么**: 离线修改 Windows 密码和 SAM 数据库
- **核心参数**:
  - `-l`: 列出用户
  - `-u`: 指定用户名
- **实战直觉**: 当你有物理访问权限时，直接重置 Windows 密码

---

## clang / clang++

**标签**: `resource_development`

- **能干什么**: C/C++ 编译器，用于编译 exploit 代码
- **核心参数**:
  - `clang` - C 语言编译器
  - `clang++` - C++ 语言编译器
  - `-o` - 指定输出文件
  - `-m32/-m64` - 编译 32/64 位程序
  - `-O2` - 优化级别
  - `-std=c++17` - C++ 标准
- **实战直觉**: 编译从 exploit-db 下载的 C/C++ exploit 代码，或自己写的提权工具

---

## commix

**标签**: `initial_access`

- **能干什么**: 自动化命令注入和利用工具
- **核心参数**:
  - `--url`: 指定目标 URL
  - `--data`: POST 数据
  - `--cookie`: 指定 Cookie
- **实战直觉**: 当你怀疑存在命令注入漏洞时，commix 能自动化测试和利用

---

## creddump7

**标签**: `os_credential_dumping`

- **能干什么**: 从 Windows 注册表文件中提取凭据
- **核心参数**: 包含多个脚本（pwdump、lsadump 等）
- **实战直觉**: 提取 Windows 凭据的 Python 工具集

---

## crunch

**标签**: `password_profiling`

- **能干什么**: 根据规则生成密码字典
- **核心参数**:
  - `min max`: 最小和最大长度
  - `-t`: 使用模式（@=小写, ,=大写, %=数字, ^=符号）
  - `-o`: 输出文件
- **实战直觉**: 当你知道密码规则（如 8 位数字+字母）时，crunch 能生成精确的字典

---

## cryptsetup

**标签**: `defense_evasion`

- **能干什么**: Linux 磁盘加密工具（LUKS），加密和管理加密分区
- **核心参数**:
  - `luksFormat`: 格式化加密分区
  - `luksOpen`: 打开加密分区
  - `luksClose`: 关闭加密分区
- **实战直觉**: 保护敏感数据，加密存储设备，防止数据泄露

---

## cutycapt

**标签**: `reporting_tools`

- **能干什么**: 网页截图工具，将网页渲染为图片
- **核心参数**:
  - `--url=`: 目标 URL
  - `--out=`: 输出文件
- **实战直觉**: 批量截图 Web 服务，用于报告或快速浏览

---

## davtest

**标签**: `web_vulnerability_scanning`

- **能干什么**: WebDAV 服务器测试工具，尝试上传各种文件类型
- **核心参数**:
  - `-url`: 指定 WebDAV URL
  - `-uploadfile`: 上传指定文件
- **实战直觉**: 当发现 WebDAV 服务时，测试是否能上传 webshell

---

## dbd

**标签**: `protocol_tunneling`

- **能干什么**: 加密的 netcat，支持 AES 加密通信
- **核心参数**:
  - `-l`: 监听模式
  - `-e`: 执行命令
  - `-k`: 加密密钥
- **实战直觉**: 建立加密反弹 shell，绕过 IDS/IPS 检测

---

## dbd/sbd

**标签**: `exfiltration`

- **能干什么**: 加密版 netcat，支持 AES/Blowfish 加密
- **核心参数**:
  - `-l`: 监听模式
  - `-e`: 执行命令
  - `-k`: 加密密钥
- **实战直觉**: 建立加密的反向 shell，绕过流量检测和 IDS

---

## dirb

**标签**: `web_scanning`

- **能干什么**: 经典的 Web 内容扫描器，基于字典的目录爆破
- **核心参数**:
  - 直接跟 URL 和字典路径
  - `-r`: 非递归模式
  - `-z`: 添加延迟（避免触发 WAF）
- **实战直觉**: 老牌工具，内置多个优质字典，适合快速扫描

---

## dirbuster

**标签**: `web_scanning`

- **能干什么**: dirb 的 GUI 版本，支持多线程目录爆破
- **核心参数**: GUI 界面操作
- **实战直觉**: 当你需要可视化界面和实时结果展示时使用

---

## dmitry

**标签**: `network_information`

- **能干什么**: 深度信息收集工具，整合 WHOIS、子域名、邮箱、端口扫描
- **核心参数**:
  - `-winsepo`: 全功能扫描（WHOIS、子域名、邮箱、端口）
  - `-o`: 输出到文件
- **实战直觉**: 快速获取目标的公开信息，适合侦察阶段的一键式信息收集

---

## dns-rebind

**标签**: `initial_access`

- **能干什么**: DNS 重绑定攻击工具
- **核心参数**:
  - 配置 DNS 服务器
  - 设置重绑定目标
- **实战直觉**: 绕过同源策略，攻击内网服务，SSRF 攻击的高级形式

---

## dns2tcpc

**标签**: `protocol_tunneling`

- **能干什么**: DNS 隧道客户端，通过 DNS 协议传输数据
- **核心参数**:
  - `-z`: DNS 服务器域名
  - `-r`: 资源名称
- **实战直觉**: 绕过防火墙限制，通过 DNS 协议建立隧道传输数据

---

## dns2tcpc/dns2tcpd

**标签**: `protocol_tunneling`

- **能干什么**: 通过 DNS 隧道传输 TCP 连接
- **核心参数**:
  - `dns2tcpc`: 客户端，`-z` 指定域名
  - `dns2tcpd`: 服务端，`-F` 指定配置文件
- **实战直觉**: 当只有 DNS 流量能出网时，通过 DNS 隧道建立连接

---

## dns2tcpd

**标签**: `protocol_tunneling`

- **能干什么**: DNS 隧道服务端
- **核心参数**:
  - `-F`: 前台运行
  - `-f`: 配置文件
- **实战直觉**: 在外网搭建 DNS 隧道服务器，接收内网传出的数据

---

## dnschef

**标签**: `network_sniffing`

- **能干什么**: DNS 代理和欺骗工具
- **核心参数**:
  - `--fakeip`: 伪造的 IP 地址
  - `--interface`: 监听接口
- **实战直觉**: 劫持 DNS 查询，将目标重定向到恶意服务器

---

## dnsenum

**标签**: `dns_enumeration`

- **能干什么**: 自动化 DNS 枚举，包括子域名爆破、区域传送、反向查询
- **核心参数**:
  - `-f`: 指定子域名字典文件
  - `--enum`: 执行标准枚举
  - `-r`: 递归查询子域名
- **实战直觉**: 当你需要全面枚举目标的 DNS 记录时，dnsenum 能一次性完成多种 DNS 侦察

---

## dnsmap

**标签**: `dns_enumeration`

- **能干什么**: 轻量级子域名爆破工具
- **核心参数**:
  - 直接跟域名即可
  - `-w`: 指定字典文件
- **实战直觉**: 快速简单的子域名发现，适合快速侦察阶段

---

## dnsrecon

**标签**: `dns_enumeration`

- **能干什么**: 多功能 DNS 侦察工具，支持区域传送、暴力破解、缓存嗅探
- **核心参数**:
  - `-d`: 指定目标域名
  - `-t`: 指定枚举类型（std、axfr、brt 等）
  - `-D`: 指定字典文件
- **实战直觉**: 当 DNS 服务器配置不当时，dnsrecon 能快速发现区域传送漏洞

---

## dsniff

**标签**: `network_sniffing`

- **能干什么**: 网络嗅探和中间人攻击工具集
- **核心参数**: 包含多个工具（dsniff、urlsnarf、mailsnarf 等）
- **实战直觉**: 从网络流量中提取密码和敏感信息

---

## enum4linux

**标签**: `network_share_discovery`

- **能干什么**: Linux 下的 Windows/Samba 枚举工具，获取用户、共享、组信息
- **核心参数**:
  - `-a`: 全面枚举
  - `-U`: 枚举用户
  - `-S`: 枚举共享
  - `-G`: 枚举组
- **实战直觉**: 当你发现 SMB 服务时，enum4linux 能快速枚举所有可用信息

---

## evil-winrm

**标签**: `pass_the_hash`

- **能干什么**: WinRM 协议的渗透测试工具，支持哈希认证
- **核心参数**:
  - `-i`: 目标 IP
  - `-u/-p`: 用户名/密码
  - `-H`: NTLM 哈希
- **实战直觉**: 当目标开启 WinRM（5985/5986）时，比 psexec 更隐蔽

---

## exe2hex

**标签**: `defense_evasion`

- **能干什么**: 将 EXE 文件转换为十六进制格式，绕过文件上传限制
- **核心参数**:
  - `-x`: 输入 EXE 文件
  - `-p`: 输出 PowerShell 脚本
  - `-b`: 输出 Batch 脚本
- **实战直觉**: 当无法直接上传 EXE 时，转换为文本格式上传后再还原

---

## faraday

**标签**: `reporting_tools`

- **能干什么**: 协作式渗透测试 IDE，整合多种工具的输出
- **核心参数**:
  - Web 界面操作（默认端口 5985）
  - 自动解析 nmap、nikto、burp 等工具输出
  - 支持多用户协作
  - `faraday-stop` - 停止服务
- **实战直觉**: 团队协作时管理渗透测试项目，自动导入工具结果，统一管理漏洞和主机信息。结束项目后用 faraday-stop 清理服务

---


## fern-wifi-cracker

**标签**: `wifi_attacks`

- **能干什么**: WiFi 破解的图形化工具
- **核心参数**: GUI 界面操作
- **实战直觉**: aircrack-ng 的图形化版本，更易用

---

## ffind

**标签**: `sleuth_kit_suite`

- **能干什么**: 通过 inode 查找文件名
- **核心参数**: `ffind <image> <inode>`
- **实战直觉**: 已知 inode 号，查找对应的文件路径

---

## ffuf

**标签**: `web_scanning`

- **能干什么**: 高速 Web 模糊测试工具，用于目录/文件/参数爆破
- **核心参数**:
  - `-u`: 指定 URL（用 FUZZ 关键字标记注入点）
  - `-w`: 指定字典文件
  - `-mc`: 匹配 HTTP 状态码
  - `-fc`: 过滤 HTTP 状态码
  - `-t`: 线程数
- **实战直觉**: 当你发现 Web 端口但爬虫未发现明显入口时，ffuf 是最快的目录爆破工具

---

## fierce

**标签**: `dns_enumeration`

- **能干什么**: 半轻量级 DNS 侦察和子域名扫描器
- **核心参数**:
  - `--domain`: 指定目标域名
  - `--subdomains`: 指定子域名列表
- **实战直觉**: 当你需要快速找到目标的 IP 范围和子域名时的轻量级选择

---

## fls

**标签**: `sleuth_kit_suite`

- **能干什么**: 列出文件系统中的文件和目录（包括已删除）
- **核心参数**:
  - `-r`: 递归列出
  - `-d`: 只显示已删除文件
- **实战直觉**: 取证分析，恢复已删除文件列表

---

## fping

**标签**: `network_service_discovery`

- **能干什么**: 并行 ping 多个主机，快速发现存活主机
- **核心参数**:
  - `-a`: 只显示存活主机
  - `-g`: 指定 IP 范围
  - `-q`: 安静模式
- **实战直觉**: 快速扫描大量 IP 段，比传统 ping 快得多

---

## fsstat

**标签**: `sleuth_kit_suite`

- **能干什么**: 显示文件系统详细信息
- **核心参数**:
  - 镜像文件路径
- **实战直觉**: 分析文件系统类型、大小、块信息

---

## msfvenom shellcode 生成器 (generic_*)

**标签**: `resource_development`

- **能干什么**: Metasploit 的通用 shellcode 生成工具集
- **核心参数**:
  - `generic_send_tcp` - 生成 TCP 反向连接 shellcode
  - `generic_listen_tcp` - 生成 TCP 绑定 shell shellcode
  - `generic_send_udp` - 生成 UDP 发送 shellcode
  - `generic_chunked` - 生成分块传输 shellcode（绕过 IDS/IPS）
  - 通常通过 `msfvenom` 调用，不直接使用
- **实战直觉**: 生成特定功能的原始 shellcode，用于漏洞利用开发。实际使用时通过 msfvenom 指定这些模块，例如 `msfvenom -p generic/shell_reverse_tcp`

---
- **实战直觉**: 通过 UDP 建立连接的 shellcode

---

## gobuster

**标签**: `web_scanning`

- **能干什么**: 多功能爆破工具，支持目录、DNS、vhost 枚举
- **核心参数**:
  - `dir -u -w`: 目录爆破模式
  - `dns -d -w`: DNS 子域名爆破
  - `vhost -u -w`: 虚拟主机爆破
- **实战直觉**: 当你需要稳定可靠的爆破工具时，gobuster 是首选

---

## gophish

**标签**: `initial_access`

- **能干什么**: 开源钓鱼框架，用于模拟钓鱼攻击
- **核心参数**:
  - Web 界面操作
  - `gophish-stop` - 停止服务
- **实战直觉**: 红队演练中测试员工安全意识的专业工具。结束演练后用 gophish-stop 清理服务

---


## hash-identifier

**标签**: `hash_identification`

- **能干什么**: 识别未知哈希值的类型
- **核心参数**: 交互式输入哈希值
- **实战直觉**: 当你获取到哈希但不知道类型时，快速识别以便选择正确的破解工具

---

## hashcat

**标签**: `password_cracking`

- **能干什么**: GPU 加速的密码破解工具，支持 300+ 种哈希类型
- **核心参数**:
  - `-m`: 指定哈希类型（如 0=MD5, 1000=NTLM）
  - `-a`: 攻击模式（0=字典, 3=掩码）
  - `-w`: 工作负载配置（1-4）
  - `--show`: 显示已破解的密码
- **实战直觉**: 当你获取到哈希值需要破解时，hashcat 的 GPU 加速能提供最快的破解速度

---

## hashdeep

**标签**: `forensics`

- **能干什么**: 计算和验证文件哈希值，用于完整性检查
- **核心参数**:
  - `-r`: 递归处理目录
  - `-c`: 验证哈希
- **实战直觉**: 取证中验证文件完整性，检测篡改

---

## hashid

**标签**: `hash_identification`

- **能干什么**: 命令行哈希类型识别工具，支持批量识别
- **核心参数**:
  - `-m`: 显示对应的 hashcat 模式编号
  - `-j`: 显示对应的 john 格式
- **实战直觉**: 比 hash-identifier 更快，能直接给出 hashcat/john 的参数

---

## hfind

**标签**: `sleuth_kit_suite`

- **能干什么**: 在哈希数据库中查找哈希值
- **核心参数**: `hfind <hash_db> <hash>`
- **实战直觉**: 快速查找已知文件的哈希（如 NSRL 数据库）

---

## hping3

**标签**: `network_service_discovery`

- **能干什么**: 高级 TCP/IP 包构造和分析工具，可用于防火墙测试
- **核心参数**:
  - `-S`: 发送 SYN 包
  - `-p`: 指定端口
  - `--flood`: 洪水攻击模式
- **实战直觉**: 当你需要测试防火墙规则或进行隐蔽扫描时，hping3 能自定义任意 TCP/IP 包

---

## hydra

**标签**: `brute_force`

- **能干什么**: 最快的网络登录暴力破解工具，支持 50+ 协议
- **核心参数**:
  - `-l/-L`: 指定用户名/用户名列表
  - `-p/-P`: 指定密码/密码列表
  - `-t`: 线程数
  - `-f`: 找到第一个密码后停止
- **实战直觉**: 当你有用户名列表需要爆破 SSH/FTP/HTTP 等服务时的首选

---

## icat

**标签**: `sleuth_kit_suite`

- **能干什么**: 通过 inode 提取文件内容
- **核心参数**:
  - `-r`: 恢复已删除文件
  - inode 号
- **实战直觉**: 恢复已删除文件的内容

---

## ifind

**标签**: `sleuth_kit_suite`

- **能干什么**: 通过文件名查找 inode
- **核心参数**: `ifind <image> -n <filename>`
- **实战直觉**: 已知文件名，查找对应的 inode 号

### 文件名层工具（已列出）
以上工具用于文件名和 inode 之间的映射

---

## ike-scan

**标签**: `network_service_discovery`

- **能干什么**: 发现和识别 IKE（IPsec VPN）主机
- **核心参数**:
  - `--aggressive`: 使用激进模式
  - `-M`: 指定变换集
- **实战直觉**: 当目标使用 VPN 时，ike-scan 能识别 VPN 网关并尝试枚举配置

---

## ils

**标签**: `sleuth_kit_suite`

- **能干什么**: 列出 inode 信息（包括已删除）
- **核心参数**:
  - `-e`: 显示所有 inode
  - `-r`: 恢复模式
- **实战直觉**: 找到已删除文件的 inode，配合 icat 恢复

---

## img_cat

**标签**: `sleuth_kit_suite`

- **能干什么**: 输出镜像文件内容
- **核心参数**: `img_cat <image>`
- **实战直觉**: 提取镜像文件的原始数据

---

## img_stat

**标签**: `sleuth_kit_suite`

- **能干什么**: 显示镜像文件信息
- **核心参数**: `img_stat <image>`
- **实战直觉**: 查看镜像文件的元数据和格式信息

### 镜像工具（已列出）
以上工具用于镜像文件的基本操作

---

## impacket-mssqlclient

**标签**: `databases`

- **能干什么**: 连接和操作 Microsoft SQL Server
- **核心参数**:
  - `domain/user:password@target`: 连接字符串
  - `-windows-auth`: 使用 Windows 认证
- **实战直觉**: 获取 MSSQL 凭据后，执行 SQL 命令或启用 xp_cmdshell

---

## impacket-psexec

**标签**: `pass_the_hash, lateral_movement`

- **能干什么**: 使用哈希值远程执行命令（无需明文密码）
- **核心参数**:
  - `domain/user:password@target`: 使用密码连接
  - `-hashes :NTLM`: 使用 NTLM 哈希连接
- **实战直觉**: 当你有 NTLM 哈希但无法破解时，直接用哈希登录

---

## impacket-scripts

**标签**: `pass_the_hash`

- **能干什么**: Impacket 工具集，包含多种 Windows 协议攻击工具
- **核心参数**: 包含 psexec、smbexec、wmiexec、secretsdump 等
- **实战直觉**: Windows 渗透的必备工具集，几乎涵盖所有 Windows 协议攻击

---

## impacket-smbexec

**标签**: `pass_the_hash, lateral_movement`

- **能干什么**: 类似 psexec，但使用不同的执行方式
- **核心参数**:
  - `-hashes :NTLM`: 使用哈希认证
- **实战直觉**: 当 psexec 被检测或阻止时的替代方案

---

## impacket-smbserver

**标签**: `exfiltration`

- **能干什么**: 快速启动一个 SMB 服务器，用于文件传输
- **核心参数**:
  - `sharename path`: 共享名和路径
  - `-smb2support`: 启用 SMB2 支持
- **实战直觉**: 在 Windows 目标上快速传输文件，无需认证

---

## iodine (iodine-client-start)

**标签**: `protocol_tunneling`

- **能干什么**: 通过 DNS 创建 IPv4 隧道
- **核心参数**:
  - 客户端：`iodine -f <nameserver> <domain>`
  - 服务端：`iodined -f <IP> <domain>`
  - `-P`: 设置密码
- **实战直觉**: 绕过防火墙限制，通过 DNS 建立完整的网络隧道，比 dns2tcp 更强大

---

## iodine-client-start

**标签**: `protocol_tunneling`

- **能干什么**: Iodine DNS 隧道客户端启动脚本
- **核心参数**: 自动化启动 iodine 客户端
- **实战直觉**: 快速建立 DNS 隧道，适合受限网络环境

---

## istat

**标签**: `sleuth_kit_suite`

- **能干什么**: 显示 inode 的详细信息
- **核心参数**:
  - inode 号
- **实战直觉**: 查看文件的元数据，包括时间戳、权限等

---

## jcat

**标签**: `sleuth_kit_suite`

- **能干什么**: 显示日志内容
- **核心参数**: `jcat <image>`
- **实战直觉**: 查看文件系统日志（如 ext3/ext4 的 journal）

---

## jls

**标签**: `sleuth_kit_suite`

- **能干什么**: 列出日志条目
- **核心参数**: `jls <image>`
- **实战直觉**: 枚举日志中的所有条目

### 日志工具（已列出）
以上工具用于文件系统日志分析

---

## john

**标签**: `password_cracking`

- **能干什么**: 经典的密码破解工具（John the Ripper），支持多种哈希格式
- **核心参数**:
  - `--wordlist=`: 指定字典文件
  - `--format=`: 指定哈希格式
  - `--show`: 显示已破解的密码
  - `--rules`: 使用规则变换
- **实战直觉**: 当你没有 GPU 或需要破解特殊格式时，john 是可靠的选择

---

## kismet

**标签**: `wifi_attacks`

- **能干什么**: 无线网络检测、嗅探和入侵检测系统
- **核心参数**: Web 界面操作
- **实战直觉**: 被动监控 WiFi 网络，发现隐藏 SSID 和客户端

---

## laudanum

**标签**: `persistence`

- **能干什么**: 多种语言的注入式 webshell 和工具
- **核心参数**: 包含 ASP、ASPX、JSP、PHP 等 webshell
- **实战直觉**: 针对不同平台的 webshell 工具集

---

## lbd

**标签**: `web_scanning`

- **能干什么**: 负载均衡检测工具，识别目标是否使用负载均衡器
- **核心参数**:
  - 直接跟域名或 IP
- **实战直觉**: 当你需要了解目标架构时，lbd 能识别负载均衡器类型和后端服务器数量

---

## legion

**标签**: `web_vulnerability_scanning`

- **能干什么**: 自动化渗透测试框架，整合 nmap、nikto 等工具
- **核心参数**: GUI 工具，点击操作
- **实战直觉**: 适合新手，自动化执行扫描和漏洞检测，生成报告

---

## linpeas

**标签**: `privilege_escalation`

- **能干什么**: Linux 权限提升自动化枚举脚本
- **核心参数**: 直接运行即可，自动检查所有提权向量
- **实战直觉**: 获取 Linux 低权限 shell 后的第一步，快速发现提权路径

---

## macchanger

**标签**: `defense_evasion`

- **能干什么**: 修改网卡 MAC 地址
- **核心参数**:
  - `-r`: 随机 MAC 地址
  - `-a`: 随机同厂商 MAC
  - `-m`: 指定 MAC 地址
- **实战直觉**: 隐藏真实身份，绕过 MAC 地址过滤

---

## mactime

**标签**: `sleuth_kit_suite`

- **能干什么**: 生成文件系统时间线，用于取证分析
- **核心参数**:
  - `-b`: body 文件（由 fls 生成）
  - `-d`: 日期范围
- **实战直觉**: 分析文件访问时间线，追踪攻击者的操作轨迹

---

## magicrescue

**标签**: `forensics`

- **能干什么**: 使用"魔术字节"恢复文件
- **核心参数**:
  - `-r`: 指定配方文件
  - `-d`: 输出目录
- **实战直觉**: 恢复特定类型的文件（图片、文档等）

---

## maltego (installer)

**标签**: `reporting_tools`

- **能干什么**: 开源情报（OSINT）和取证工具，可视化数据关系图谱
- **核心参数**:
  - GUI 界面操作
  - 需要先运行安装程序
  - 支持多种数据源和变换（Transforms）
- **实战直觉**: 绘制目标的关系图谱（域名、IP、人员、组织等），发现隐藏的联系和攻击面

---

## masscan

**标签**: `network_information`

- **能干什么**: 超高速端口扫描器，能在几分钟内扫描整个互联网
- **核心参数**:
  - `-p`: 指定端口范围
  - `--rate`: 设置发包速率（packets/sec）
  - `--banners`: 抓取服务 banner 信息
- **实战直觉**: 当你需要快速扫描大量 IP 或全端口时，masscan 比 nmap 快 100 倍，但精度略低

---

## medusa

**标签**: `brute_force`

- **能干什么**: 并行化的网络登录暴力破解工具
- **核心参数**:
  - `-h`: 目标主机
  - `-u/-U`: 用户名/用户名文件
  - `-p/-P`: 密码/密码文件
  - `-M`: 指定模块（ssh、ftp 等）
- **实战直觉**: 当 hydra 不稳定时的备选方案，某些场景下比 hydra 更可靠

---

## metasploit-framework

**标签**: `initial_access`

- **能干什么**: 最强大的渗透测试框架，集成漏洞利用、后渗透、payload 生成
- **核心参数**:
  - `msfconsole`: 启动控制台
  - `search`: 搜索模块
  - `use`: 使用模块
  - `set`: 设置参数
- **实战直觉**: 当你找到已知漏洞时，metasploit 通常有现成的 exploit 模块

---

## mimikatz

**标签**: `pass_the_hash`

- **能干什么**: Windows 凭据提取工具，能从内存中提取明文密码和哈希
- **核心参数**:
  - `sekurlsa::logonpasswords`: 提取登录密码
  - `sekurlsa::pth`: Pass-the-Hash 攻击
  - `lsadump::sam`: 导出 SAM 数据库
- **实战直觉**: 获取 Windows 系统权限后提取凭据的首选工具

---

## miredo

**标签**: `protocol_tunneling`

- **能干什么**: Teredo IPv6 隧道客户端，通过 IPv4 NAT 建立 IPv6 连接
- **核心参数**: 作为服务运行
- **实战直觉**: 在仅有 IPv4 的网络中访问 IPv6 资源

---

## mitmproxy

**标签**: `collection`

- **能干什么**: 交互式 HTTPS 代理，用于拦截和修改 HTTP/HTTPS 流量
- **核心参数**:
  - `mitmproxy`: 交互式界面
  - `mitmweb`: Web 界面
  - `mitmdump`: 命令行模式
- **实战直觉**: 分析和修改 HTTPS 流量，测试 API 安全性

---

## mmcat

**标签**: `sleuth_kit_suite`

- **能干什么**: 提取分区内容
- **核心参数**: `mmcat <image> <partition_num>`
- **实战直觉**: 导出特定分区的原始数据

---

## mmls

**标签**: `sleuth_kit_suite`

- **能干什么**: 显示磁盘分区表信息
- **核心参数**:
  - 镜像文件路径
- **实战直觉**: 查看磁盘分区布局，确定要分析的分区偏移量

---

## mmstat

**标签**: `sleuth_kit_suite`

- **能干什么**: 显示分区信息
- **核心参数**: `mmstat <image> <partition_num>`
- **实战直觉**: 查看分区的详细元数据

### 其他工具（已列出）
以上工具用于各种取证分析任务

---

## msf-nasm_shell

**标签**: `resource_development`

- **能干什么**: Metasploit 的汇编/反汇编交互式 shell
- **核心参数**: 交互式输入汇编指令
- **实战直觉**: 快速生成 shellcode 或转换汇编指令

---

## msfpc

**标签**: `resource_development`

- **能干什么**: MSF Payload Creator，快速生成各种 payload
- **核心参数**:
  - 指定 payload 类型和参数
- **实战直觉**: 比 msfvenom 更简单的 payload 生成工具

---

## msfvenom

**标签**: `resource_development`

- **能干什么**: Metasploit 的 payload 生成器，创建各种格式的恶意载荷
- **核心参数**:
  - `-p`: 指定 payload
  - `-f`: 输出格式（exe、elf、php 等）
  - `LHOST/LPORT`: 回连地址和端口
- **实战直觉**: 生成反向 shell、木马、shellcode 的标准工具

---

## mysql

**标签**: `databases`

- **能干什么**: MySQL 命令行客户端
- **核心参数**:
  - `-h`: 主机
  - `-u`: 用户名
  - `-p`: 密码
- **实战直觉**: 连接 MySQL 数据库，提取数据或执行命令

---

## nbtscan

**标签**: `network_share_discovery`

- **能干什么**: 扫描 NetBIOS 名称信息
- **核心参数**:
  - `-r`: 使用本地端口 137
  - `-v`: 详细输出
- **实战直觉**: 在内网中快速发现 Windows 主机的 NetBIOS 名称和 MAC 地址

---

## ncrack

**标签**: `brute_force`

- **能干什么**: Nmap 项目的网络认证破解工具
- **核心参数**:
  - `-U`: 用户名文件
  - `-P`: 密码文件
  - `-p`: 指定端口和协议
- **实战直觉**: 与 nmap 集成良好，适合大规模网络的凭据爆破

---

## netcat

**标签**: `exfiltration`

- **能干什么**: 网络瑞士军刀，用于端口监听、连接、文件传输
- **核心参数**:
  - `-l`: 监听模式
  - `-p`: 指定端口
  - `-e`: 执行命令（反向 shell）
- **实战直觉**: 建立反向 shell 或传输文件的经典工具

---

## netdiscover

**标签**: `network_service_discovery`

- **能干什么**: 被动/主动 ARP 侦察工具，发现本地网络主机
- **核心参数**:
  - `-r`: 指定 IP 范围
  - `-p`: 被动模式（嗅探 ARP 流量）
- **实战直觉**: 在内网渗透中，被动模式能隐蔽地发现网络拓扑

---

## netexec

**标签**: `pass_the_hash`

- **能干什么**: CrackMapExec 的继任者，用于大规模 Windows 网络渗透测试
- **核心参数**:
  - `smb`: SMB 协议测试
  - `-u/-p`: 用户名/密码
  - `-H`: NTLM 哈希
  - `--shares`: 枚举共享
  - `-x`: 执行命令
- **实战直觉**: 批量测试多个主机的凭据，横向移动的利器，比单个 psexec 效率高得多

---

## netexec (原 crackmapexec)

**标签**: `credential_access`

- **能干什么**: 多协议网络渗透测试工具，支持 SMB/WinRM/LDAP/MSSQL 等
- **核心参数**:
  - `smb/winrm/ldap/mssql`: 指定协议
  - `-u/-p`: 用户名/密码
  - `-H`: 使用 NTLM 哈希
  - `--shares`: 枚举共享
  - `-x`: 执行命令
  - `--sam/--lsa`: 提取凭据
- **实战直觉**: 内网渗透的瑞士军刀，能批量测试凭据、执行命令、提取信息，是 crackmapexec 的继任者

---

## netmask

**标签**: `network_information`

- **能干什么**: 网络掩码计算工具
- **核心参数**:
  - IP/CIDR: 计算网络范围
- **实战直觉**: 快速计算子网范围，规划网络扫描

---

## netsniff-ng

**标签**: `network_sniffing`

- **能干什么**: 高性能网络嗅探工具包
- **核心参数**:
  - `-i`: 输入接口
  - `-o`: 输出文件
- **实战直觉**: 当需要高速抓包时，比 tcpdump 性能更好

---

## nikto

**标签**: `web_vulnerability_scanning`

- **能干什么**: 全面的 Web 服务器漏洞扫描器，检测过时软件和配置问题
- **核心参数**:
  - `-h`: 指定目标主机
  - `-p`: 指定端口
  - `-ssl`: 使用 SSL/TLS
  - `-Tuning`: 指定扫描类型
- **实战直觉**: 快速识别 Web 服务器的已知漏洞和错误配置，适合初步扫描

---

## nmap

**标签**: `network_information`

- **能干什么**: 端口扫描和服务识别的行业标准，用于快速绘制目标网络拓扑
- **核心参数**:
  - `-sS`: SYN 扫描（半开扫描），隐蔽且快速
  - `-sV`: 服务版本探测，识别运行的具体服务版本
  - `-O`: 操作系统指纹识别
  - `-p-`: 扫描全部 65535 个端口
  - `-A`: 激进扫描（包含 OS 检测、版本检测、脚本扫描、traceroute）
- **实战直觉**: 任何渗透测试的第一步，当你需要了解目标开放了哪些服务时的首选工具

---

## onesixtyone

**标签**: `snmp_smtp_ssl`

- **能干什么**: 快速 SNMP 扫描工具
- **核心参数**:
  - `-c`: community string 字典
  - `-i`: 目标 IP 列表
- **实战直觉**: 暴力破解 SNMP community string，获取网络设备信息

---

## ophcrack-cli

**标签**: `password_cracking`

- **能干什么**: 基于彩虹表的 Windows 密码破解工具
- **核心参数**:
  - `-t`: 指定彩虹表路径
  - `-f`: 指定 SAM 文件
- **实战直觉**: 当你获取到 Windows SAM 文件且有彩虹表时，能快速破解弱密码

---

## passing-the-hash

**标签**: `pass_the_hash`

- **能干什么**: Pass-the-Hash 工具集
- **核心参数**: 各种 PTH 工具的集合
- **实战直觉**: 提供多种 PTH 攻击方式的工具包

---

## patator

**标签**: `brute_force`

- **能干什么**: 多功能暴力破解工具，支持模块化扩展
- **核心参数**:
  - 模块名（如 ssh_login、http_fuzz）
  - `host=`: 目标主机
  - `user=FILE0`: 用户名字典
  - `password=FILE1`: 密码字典
- **实战直觉**: 当你需要更灵活的爆破场景（如 HTTP 参数爆破）时使用

---

## pdf-parser

**标签**: `reporting_tools`

- **能干什么**: 深度解析 PDF 文件内容
- **核心参数**:
  - `--search`: 搜索关键字
  - `--object`: 提取特定对象
- **实战直觉**: 提取 PDF 中的恶意代码或隐藏内容

---

## pdfid

**标签**: `reporting_tools`

- **能干什么**: 分析 PDF 文件结构，检测恶意 PDF
- **核心参数**:
  - PDF 文件路径
- **实战直觉**: 快速识别 PDF 中的可疑元素（JavaScript、嵌入文件等）

---

## peass

**标签**: `privilege_escalation`

- **能干什么**: PEASS 工具套件（包含 linpeas 和 winpeas）
- **核心参数**: 根据系统选择对应版本
- **实战直觉**: 权限提升枚举的标准工具集

---

## photorec

**标签**: `forensics`

- **能干什么**: 文件恢复工具，从磁盘恢复删除的文件
- **核心参数**: 交互式界面
- **实战直觉**: 恢复被删除的文件，即使文件系统损坏

---

## pipal

**标签**: `reporting_tools`

- **能干什么**: 密码统计分析工具
- **核心参数**:
  - 直接跟密码列表文件
- **实战直觉**: 分析破解出的密码，发现密码规律，优化字典

---

## pixiewps

**标签**: `wifi_attacks`

- **能干什么**: 离线 WPS PIN 破解工具（Pixie Dust 攻击）
- **核心参数**:
  - `-e`: PKE 值
  - `-r`: PKR 值
- **实战直觉**: 利用 WPS 实现缺陷，几秒内破解 PIN

---

## powershell-empire

**标签**: `command_and_control`

- **能干什么**: 后渗透框架，基于 PowerShell 的 C2 平台
- **核心参数**: 交互式控制台
- **实战直觉**: Windows 后渗透的强大框架，支持多种模块和持久化

---

## powersploit

**标签**: `resource_development`

- **能干什么**: PowerShell 后渗透框架
- **核心参数**: 包含多个 PowerShell 模块
- **实战直觉**: Windows 后渗透的瑞士军刀，包含提权、凭据提取、持久化等模块

---

## proxychains4

**标签**: `protocol_tunneling`

- **能干什么**: 强制任何程序通过代理链（SOCKS/HTTP）运行
- **核心参数**:
  - 编辑 `/etc/proxychains4.conf` 配置代理
  - `proxychains4 <command>`: 通过代理运行命令
- **实战直觉**: 隐藏攻击来源，通过多层代理访问目标

---

## proxytunnel

**标签**: `protocol_tunneling`

- **能干什么**: 通过 HTTP 代理建立 SSL 隧道
- **核心参数**:
  - `-p`: 代理服务器
  - `-d`: 目标服务器
- **实战直觉**: 绕过 HTTP 代理限制，建立加密隧道

---

## ptunnel

**标签**: `protocol_tunneling`

- **能干什么**: 通过 ICMP 隧道传输 TCP 连接
- **核心参数**:
  - `-p`: 代理服务器
  - `-lp/-da/-dp`: 本地端口/目标地址/目标端口
- **实战直觉**: 当 ICMP 未被过滤时，通过 ping 包建立隧道

---

## pwnat

**标签**: `protocol_tunneling`

- **能干什么**: NAT 穿透工具，无需端口转发建立连接
- **核心参数**:
  - `-s`: 服务端模式
  - `-c`: 客户端模式
- **实战直觉**: 在双方都在 NAT 后时建立直接连接

---

## pyinstaller

**标签**: `resource_development`

- **能干什么**: 将 Python 脚本打包成独立可执行文件
- **核心参数**:
  - `--onefile`: 打包成单个文件
  - `--noconsole`: 无控制台窗口
- **实战直觉**: 将 Python 工具打包成 exe，方便在目标系统上运行

---

## radare2

**标签**: `resource_development`

- **能干什么**: 强大的逆向工程框架，支持反汇编、调试、分析
- **核心参数**:
  - `r2 <file>`: 打开文件
  - `aaa`: 自动分析
  - `pdf`: 反汇编函数
- **实战直觉**: 深度分析二进制文件，逆向恶意软件或破解程序

---

## rdesktop

**标签**: `lateral_movement`

- **能干什么**: Linux 下的 RDP 客户端，连接 Windows 远程桌面
- **核心参数**:
  - `-u`: 用户名
  - `-p`: 密码
  - `-g`: 分辨率
- **实战直觉**: 当你有 RDP 凭据时，图形化访问目标系统

---

## reaver

**标签**: `wifi_attacks`

- **能干什么**: WPS PIN 暴力破解工具
- **核心参数**:
  - `-i`: 监控模式接口
  - `-b`: 目标 BSSID
- **实战直觉**: 当路由器开启 WPS 时，通过 PIN 破解获取密码

---

## recon-ng

**标签**: `web_vulnerability_scanning`

- **能干什么**: 模块化的 Web 侦察框架，类似 Metasploit 的侦察版
- **核心参数**:
  - `marketplace install`: 安装模块
  - `modules load`: 加载模块
  - `run`: 执行模块
- **实战直觉**: 自动化 OSINT 收集，整合多个数据源，适合大规模信息收集

---

## recordmydesktop

**标签**: `reporting_tools`

- **能干什么**: 桌面录屏工具
- **核心参数**:
  - `--no-sound`: 不录制声音
  - `-o`: 输出文件
- **实战直觉**: 录制渗透测试过程，用于报告或演示

---

## responder

**标签**: `credential_access`

- **能干什么**: LLMNR/NBT-NS/MDNS 投毒攻击工具，捕获 NTLM 哈希
- **核心参数**:
  - `-I`: 指定网络接口
  - `-wrf`: 启用 WPAD/Responder/Fingerprint
- **实战直觉**: 在内网中被动监听，当用户访问不存在的共享时自动捕获凭据

---

## rsmangler

**标签**: `password_profiling`

- **能干什么**: 对现有字典进行变换和扩展
- **核心参数**:
  - `--file`: 输入字典文件
  - `--min/--max`: 最小/最大长度
- **实战直觉**: 当基础字典不够时，rsmangler 能生成常见变体（大小写、数字后缀等）

---

## samdump2

**标签**: `os_credential_dumping`

- **能干什么**: 从 Windows SAM 文件中提取密码哈希
- **核心参数**:
  - `SYSTEM SAM`: 指定 SYSTEM 和 SAM 文件路径
- **实战直觉**: 当你获取到 Windows 的 SAM 和 SYSTEM 文件时，提取用户哈希

---

## sbd

**标签**: `exfiltration`

- **能干什么**: Secure Backdoor，加密的 netcat 替代品
- **核心参数**:
  - `-l`: 监听模式
  - `-p`: 端口
  - `-k`: 加密密钥
- **实战直觉**: 与 dbd 类似，提供加密的网络通信通道

---

## scalpel

**标签**: `forensics`

- **能干什么**: 基于文件头/尾的数据雕刻工具
- **核心参数**:
  - `-c`: 配置文件
  - `-o`: 输出目录
- **实战直觉**: 从磁盘镜像中雕刻出特定类型的文件

---

## scapy

**标签**: `network_sniffing`

- **能干什么**: Python 交互式包操作工具，可构造和解析任意网络包
- **核心参数**: Python 交互式环境
- **实战直觉**: 当你需要构造特殊的网络包或进行协议分析时使用

---

## scrounge-ntfs

**标签**: `forensics`

- **能干什么**: NTFS 文件系统数据恢复工具
- **核心参数**:
  - `-l`: 列出分区
  - `-o`: 输出目录
- **实战直觉**: 从损坏的 NTFS 分区中恢复文件

---

## searchsploit

**标签**: `resource_development`

- **能干什么**: 离线搜索 Exploit-DB 数据库
- **核心参数**:
  - 直接跟关键词搜索
  - `-m`: 复制 exploit 到当前目录
  - `-x`: 查看 exploit 内容
- **实战直觉**: 快速查找已知漏洞的 exploit 代码

---

## setoolkit

**标签**: `initial_access`

- **能干什么**: 社会工程学工具包，用于钓鱼攻击和凭据收集
- **核心参数**: 交互式菜单操作
- **实战直觉**: 当技术手段受阻时，社工攻击可能是突破口

---

## sigfind

**标签**: `sleuth_kit_suite`

- **能干什么**: 在磁盘中搜索特定签名
- **核心参数**: `sigfind <signature> <image>`
- **实战直觉**: 查找文件头、分区表等特定字节序列

---

## skipfish

**标签**: `web_vulnerability_scanning`

- **能干什么**: 主动式 Web 应用安全侦察工具，生成交互式站点地图
- **核心参数**:
  - `-o`: 输出目录
  - `-S`: 指定字典
- **实战直觉**: 深度爬取和分析 Web 应用结构，生成详细的安全报告

---

## smbclient

**标签**: `network_share_discovery`

- **能干什么**: 类似 FTP 的 SMB 客户端，用于访问 Windows 共享
- **核心参数**:
  - `-L`: 列出可用共享
  - `-N`: 无密码连接
  - `-U`: 指定用户名
- **实战直觉**: 当你需要手动浏览 SMB 共享或上传/下载文件时使用

---

## smbmap

**标签**: `network_share_discovery, pass_the_hash`

- **能干什么**: SMB 共享枚举和权限检查工具
- **核心参数**:
  - `-H`: 指定主机
  - `-u/-p`: 用户名/密码
  - `-r`: 递归列出目录
  - `-x`: 执行命令
- **实战直觉**: 快速检查 SMB 共享的读写权限，比 smbclient 更直观

---

## smtp-user-enum

**标签**: `snmp_smtp_ssl`

- **能干什么**: 枚举 SMTP 服务器的有效用户
- **核心参数**:
  - `-M`: 枚举模式（VRFY/EXPN/RCPT）
  - `-U`: 用户名列表
  - `-t`: 目标主机
- **实战直觉**: 通过 SMTP 协议枚举有效用户名，为后续爆破做准备

---

## snmp-check

**标签**: `snmp_smtp_ssl`

- **能干什么**: 枚举 SNMP 设备信息
- **核心参数**:
  - `-c`: community string
  - `-v`: SNMP 版本
- **实战直觉**: 成功连接后提取设备详细信息，包括系统信息、网络配置等

---

## socat

**标签**: `exfiltration`

- **能干什么**: 增强版 netcat，支持更多协议和功能
- **核心参数**:
  - `TCP-LISTEN:port`: 监听端口
  - `EXEC:cmd`: 执行命令
- **实战直觉**: 当 netcat 功能不够时，socat 提供更强大的网络通信能力

---

## sorter

**标签**: `sleuth_kit_suite`

- **能干什么**: 按文件类型对文件进行分类
- **核心参数**: `sorter <image> <output_dir>`
- **实战直觉**: 自动分类提取的文件（图片、文档、可执行文件等）

---

## spiderfoot

**标签**: `web_vulnerability_scanning`

- **能干什么**: 自动化 OSINT 工具，收集目标的各种公开信息
- **核心参数**:
  - `-s`: 目标域名或 IP
  - `-t`: 扫描类型
  - `-o`: 输出格式
- **实战直觉**: 一键收集域名、子域名、邮箱、社交媒体等信息，侦察阶段的利器

---

## spiderfoot-cli

**标签**: `web_vulnerability_scanning`

- **能干什么**: SpiderFoot 的命令行版本
- **核心参数**:
  - `-s`: 扫描目标
  - `-t`: 扫描类型
  - `-m`: 使用的模块
- **实战直觉**: 自动化 OSINT 收集，适合脚本化和批量扫描

---

## spooftooph

**标签**: `system_tools`

- **能干什么**: 蓝牙设备欺骗工具
- **核心参数**:
  - `-i`: 蓝牙接口
  - `-n`: 伪造设备名
- **实战直觉**: 伪造蓝牙设备，进行蓝牙攻击

---

## sqlmap

**标签**: `initial_access`

- **能干什么**: 自动化 SQL 注入检测和利用工具，支持多种数据库
- **核心参数**:
  - `-u`: 指定目标 URL
  - `--dbs`: 枚举数据库
  - `--tables`: 枚举表
  - `--dump`: 导出数据
  - `--batch`: 非交互模式
- **实战直觉**: 当你发现可能存在 SQL 注入点时，sqlmap 能自动化完成从检测到数据提取的全过程

---

## srch_strings

**标签**: `sleuth_kit_suite`

- **能干什么**: 搜索字符串（类似 strings）
- **核心参数**: `srch_strings <image>`
- **实战直觉**: 从磁盘镜像中提取可读字符串

---

## ssldump

**标签**: `collection`

- **能干什么**: SSL/TLS 流量分析工具
- **核心参数**:
  - `-i`: 网络接口
  - `-k`: 私钥文件（解密流量）
- **实战直觉**: 分析 SSL/TLS 握手过程，调试加密连接

---

## sslh

**标签**: `protocol_tunneling`

- **能干什么**: 多协议端口复用工具，在同一端口上运行多个服务
- **核心参数**:
  - `-p`: 监听端口
  - `--ssh/--ssl`: 指定后端服务
- **实战直觉**: 在 443 端口同时运行 HTTPS 和 SSH，绕过端口限制

---

## sslscan

**标签**: `snmp_smtp_ssl`

- **能干什么**: 快速扫描 SSL/TLS 配置，检测弱加密套件
- **核心参数**:
  - `--no-failed`: 只显示支持的加密套件
  - `--xml`: XML 输出
- **实战直觉**: 快速发现 SSL 配置问题，如过期协议（SSLv2/v3）、弱加密

---

## sslsplit

**标签**: `collection`

- **能干什么**: SSL/TLS 中间人攻击工具
- **核心参数**:
  - `-D`: 调试模式
  - `-l`: 日志目录
- **实战直觉**: 拦截和解密 SSL/TLS 流量

---

## sslyze

**标签**: `snmp_smtp_ssl`

- **能干什么**: 全面的 SSL/TLS 安全扫描工具
- **核心参数**:
  - `--regular`: 标准扫描
  - `--heartbleed`: 检测心脏滴血漏洞
- **实战直觉**: 比 sslscan 更详细，检测各种 SSL 漏洞和配置问题

---

## starkiller

**标签**: `command_and_control`

- **能干什么**: Empire 的图形化界面
- **核心参数**: Web 界面操作
- **实战直觉**: 更直观地管理 Empire 会话和模块

---

## stunnel4

**标签**: `protocol_tunneling`

- **能干什么**: 为任意 TCP 连接添加 SSL/TLS 加密
- **核心参数**:
  - 配置文件指定加密参数
- **实战直觉**: 加密 C2 通信，绕过流量检测

---

## swaks

**标签**: `snmp_smtp_ssl`

- **能干什么**: SMTP 测试工具，发送测试邮件
- **核心参数**:
  - `--to`: 收件人
  - `--from`: 发件人
  - `--server`: SMTP 服务器
- **实战直觉**: 测试 SMTP 配置，发送钓鱼邮件，验证邮件过滤规则

---

## tcpdump

**标签**: `network_sniffing`

- **能干什么**: 命令行抓包工具，捕获网络流量
- **核心参数**:
  - `-i`: 指定网络接口
  - `-w`: 保存到文件
  - `-r`: 读取 pcap 文件
  - `port/host`: 过滤条件
- **实战直觉**: 快速捕获网络流量，分析协议或提取凭据

---

## tcpreplay

**标签**: `system_tools`

- **能干什么**: 重放 pcap 数据包
- **核心参数**:
  - `-i`: 网络接口
  - pcap 文件
- **实战直觉**: 重放捕获的流量，测试 IDS/IPS 规则

---

## testdisk

**标签**: `forensics`

- **能干什么**: 分区恢复和修复工具
- **核心参数**: 交互式界面
- **实战直觉**: 恢复丢失的分区，修复引导扇区

---

## thc-pptp-bruter

**标签**: `brute_force`

- **能干什么**: PPTP VPN 暴力破解工具
- **核心参数**:
  - `-u`: 用户名
  - `-w`: 密码字典
  - `-s`: 目标服务器
- **实战直觉**: 当目标使用 PPTP VPN 时，暴力破解 VPN 凭据

---

## theHarvester

**标签**: `network_information`

- **能干什么**: 从搜索引擎和公开数据源收集邮箱、子域名、主机信息
- **核心参数**:
  - `-d`: 指定目标域名
  - `-b`: 指定数据源（google、bing、linkedin 等）
  - `-l`: 限制搜索结果数量
- **实战直觉**: 社工前的情报收集，当你需要找到目标公司的员工邮箱列表时的首选

---

## tsk_comparedir

**标签**: `sleuth_kit_suite`

- **能干什么**: 比较目录和镜像
- **核心参数**: `tsk_comparedir <image> <directory>`
- **实战直觉**: 对比实际目录和镜像中的差异

---

## tsk_gettimes

**标签**: `sleuth_kit_suite`

- **能干什么**: 提取时间戳信息
- **核心参数**: `tsk_gettimes <image>`
- **实战直觉**: 批量提取文件的时间戳（MAC 时间）

---

## tsk_loaddb

**标签**: `sleuth_kit_suite`

- **能干什么**: 将文件系统信息加载到数据库
- **核心参数**: `tsk_loaddb <image> <database>`
- **实战直觉**: 将取证数据导入数据库便于分析

---

## tsk_recover

**标签**: `sleuth_kit_suite`

- **能干什么**: 恢复文件
- **核心参数**: `tsk_recover <image> <output_dir>`
- **实战直觉**: 批量恢复已删除的文件

---

## udptunnel

**标签**: `protocol_tunneling`

- **能干什么**: 通过 UDP 隧道传输 TCP 连接
- **核心参数**:
  - `-s`: 服务端模式
  - `-c`: 客户端模式
- **实战直觉**: 当 TCP 被过滤但 UDP 可通过时使用

---

## unicornscan

**标签**: `network_information`

- **能干什么**: 异步 TCP/UDP 端口扫描器，支持分布式扫描
- **核心参数**:
  - `-mT`: TCP 扫描模式
  - `-mU`: UDP 扫描模式
  - `-Iv`: 详细输出模式
- **实战直觉**: 当 nmap 被防火墙拦截时，unicornscan 的异步扫描方式可能绕过某些检测

---

## unix-privesc-check

**标签**: `privilege_escalation`

- **能干什么**: Unix/Linux 权限提升检查脚本
- **核心参数**:
  - `standard`: 标准检查
  - `detailed`: 详细检查
- **实战直觉**: 比 linpeas 更轻量，适合受限环境

---

## voiphopper

**标签**: `system_tools`

- **能干什么**: VLAN 跳跃攻击工具，针对 VoIP 网络
- **核心参数**:
  - `-i`: 网络接口
  - `-c`: CDP/LLDP 模式
- **实战直觉**: 跳到 VoIP VLAN，访问语音网络

---

## wafw00f

**标签**: `web_vulnerability_scanning`

- **能干什么**: 识别 Web 应用防火墙（WAF）类型
- **核心参数**:
  - `url`: 目标 URL
  - `-a`: 测试所有 WAF
  - `-v`: 详细输出
- **实战直觉**: 攻击前先识别 WAF，选择合适的绕过策略，避免被封 IP

---

## wapiti

**标签**: `web_vulnerability_scanning`

- **能干什么**: 自动化 Web 应用漏洞扫描器，检测 SQL 注入、XSS、文件包含等
- **核心参数**:
  - `-u`: 指定目标 URL
  - `-m`: 指定扫描模块
  - `-f`: 指定输出格式
- **实战直觉**: 当你需要快速自动化扫描 Web 应用的常见漏洞时使用

---

## wash

**标签**: `wifi_attacks`

- **能干什么**: 扫描支持 WPS 的 WiFi 网络
- **核心参数**:
  - `-i`: 监控模式接口
- **实战直觉**: 快速识别哪些路由器开启了 WPS，可作为攻击目标

---

## webshells

**标签**: `persistence`

- **能干什么**: 各种语言的 webshell 集合
- **核心参数**: 直接使用 `/usr/share/webshells/` 下的文件
- **实战直觉**: 快速获取各种语言的 webshell 模板

---

## weevely

**标签**: `persistence`

- **能干什么**: PHP webshell 生成和管理工具
- **核心参数**:
  - `generate`: 生成 webshell
  - `<url> <password>`: 连接到 webshell
- **实战直觉**: 生成隐蔽的 PHP 后门，维持 Web 服务器访问权限

---

## wfuzz

**标签**: `web_scanning`

- **能干什么**: 强大的 Web 应用模糊测试框架，支持复杂的注入场景
- **核心参数**:
  - `-w`: 指定字典
  - `-u`: 指定 URL（用 FUZZ 标记注入点）
  - `--hc/--hl/--hw`: 隐藏特定响应
- **实战直觉**: 当你需要测试复杂的参数注入或多点模糊测试时，wfuzz 比 ffuf 更灵活

---

## whatweb

**标签**: `web_vulnerability_scanning`

- **能干什么**: Web 指纹识别工具，识别网站使用的技术栈
- **核心参数**:
  - `-a`: 设置攻击级别（1-4）
  - `-v`: 详细输出
- **实战直觉**: 快速识别目标使用的 CMS、框架、服务器版本，为后续攻击提供方向

---

## wifite

**标签**: `wifi_attacks`

- **能干什么**: 自动化 WiFi 攻击工具，整合多种攻击方式
- **核心参数**: 交互式菜单操作
- **实战直觉**: 一键式 WiFi 破解，自动选择最佳攻击方式

---

## winpeas

**标签**: `privilege_escalation`

- **能干什么**: Windows 权限提升自动化枚举脚本
- **核心参数**: 直接运行，自动检查 Windows 提权向量
- **实战直觉**: 获取 Windows 低权限 shell 后的必备工具

---

## wordlists

**标签**: `password_profiling`

- **能干什么**: Kali 预装的密码字典集合（rockyou.txt 等）
- **核心参数**: 直接使用 `/usr/share/wordlists/` 下的字典文件
- **实战直觉**: rockyou.txt 包含 1400 万真实密码，是暴力破解的首选字典

---

## wpscan

**标签**: `web_vulnerability_scanning`

- **能干什么**: WordPress 专用漏洞扫描器，枚举插件、主题、用户
- **核心参数**:
  - `--url`: 指定目标 URL
  - `--enumerate`: 枚举类型（u=用户，p=插件，t=主题）
  - `--api-token`: 使用 API 获取漏洞信息
- **实战直觉**: 当目标是 WordPress 站点时的专用工具，能发现过时插件的已知漏洞

---

## 侦察工具

**标签**: `misc_tools`

### legion
- **能干什么**: 自动化渗透测试框架，整合 nmap、nikto、hydra 等工具
- **核心参数**: GUI 界面操作，自动化扫描和攻击
- **实战直觉**: 适合快速评估目标，自动化执行从扫描到暴力破解的完整流程

### recon-ng
- **能干什么**: Web 侦察框架，模块化的 OSINT 工具，类似 Metasploit 的侦察版
- **核心参数**:
  - 交互式控制台
  - `marketplace install all`: 安装所有模块
  - `modules load`: 加载模块
  - `run`: 执行模块
- **实战直觉**: 系统化地收集目标的公开信息，模块化设计便于扩展和自动化

### recon-ng
- **能干什么**: Web 侦察框架，模块化的 OSINT 工具
- **核心参数**: 交互式控制台
- **实战直觉**: 系统化地收集目标的公开信息

### spiderfoot / spiderfoot-cli
- **能干什么**: 自动化 OSINT 工具，整合 100+ 数据源进行情报收集
- **核心参数**:
  - `spiderfoot`: Web 界面版本
  - `spiderfoot-cli -s <target>`: 命令行版本
  - `-t`: 扫描类型（IP、域名、邮箱等）
- **实战直觉**: 一键式 OSINT 收集，自动关联数据，发现目标的数字足迹和关联信息

---

## 其他 Sleuth Kit 工具

**标签**: `sleuth_kit_suite`



---

## 加密保护

**标签**: `misc_tools`

### cryptsetup
- **能干什么**: Linux 磁盘加密工具（LUKS）
- **核心参数**:
  - `luksFormat`: 格式化加密分区
  - `luksOpen`: 打开加密分区
- **实战直觉**: 保护敏感数据，加密存储设备

---

## 实战直觉

**标签**: `sleuth_kit_suite`

Sleuth Kit 工具链的典型使用流程：
1. `mmls` - 查看分区表
2. `fsstat` - 确认文件系统类型
3. `fls -r` - 列出所有文件（包括已删除）
4. `ils -e` - 找到已删除文件的 inode
5. `icat` - 恢复文件内容
6. `mactime` - 生成时间线分析

这些工具是数字取证的基础，当你需要深度分析磁盘镜像或恢复删除数据时必不可少。

---

## 应用层协议工具

**标签**: `misc_tools`

### cadaver
- **能干什么**: WebDAV 命令行客户端，类似 FTP 的 WebDAV 操作工具
- **核心参数**:
  - 直接跟 WebDAV URL
  - `put`: 上传文件
  - `get`: 下载文件
- **实战直觉**: 访问 WebDAV 共享，上传 webshell，比 curl 更方便交互式操作

### dbd/sbd
- **能干什么**: 加密版 netcat，支持 AES 加密
- **核心参数**:
  - `-l`: 监听模式
  - `-e`: 执行命令
  - `-k`: 加密密钥
- **实战直觉**: 建立加密的反向 shell，绕过流量检测

---

## 执行工具

**标签**: `misc_tools`

### powersploit
- **能干什么**: PowerShell 后渗透框架，包含多个 PowerShell 模块
- **核心参数**:
  - `Import-Module PowerSploit.psd1`: 导入模块
  - `Get-Command -Module PowerSploit`: 查看所有命令
  - 包含 Invoke-Mimikatz、PowerView 等模块
- **实战直觉**: Windows 后渗透的 PowerShell 工具集，内存中执行，无文件落地

---

## 核心工具

**标签**: `sleuth_kit_suite`

### autopsy
- **能干什么**: Sleuth Kit 的图形化前端，提供完整的取证分析平台
- **核心参数**: GUI 界面操作
- **实战直觉**: 深度分析磁盘镜像，恢复删除文件，时间线分析，提取证据

### fls
- **能干什么**: 列出文件系统中的文件和目录（包括已删除的）
- **核心参数**:
  - `-r`: 递归列出
  - `-d`: 只显示已删除文件
  - `-p`: 显示完整路径
- **实战直觉**: 快速查看磁盘镜像中的文件结构，发现隐藏或删除的文件

### icat
- **能干什么**: 通过 inode 号提取文件内容
- **核心参数**:
  - 镜像文件 inode号
- **实战直觉**: 恢复已删除文件的内容（即使文件名已丢失）

### ils
- **能干什么**: 列出 inode 信息（包括已删除文件的 inode）
- **核心参数**:
  - `-e`: 只显示已删除的 inode
  - `-m`: 输出为 mactime 格式
- **实战直觉**: 发现已删除文件的 inode，为恢复做准备

### mactime
- **能干什么**: 创建文件系统活动的时间线
- **核心参数**:
  - `-b`: 指定 body 文件
  - `-d`: 时间范围
- **实战直觉**: 重建事件时间线，分析攻击者的活动轨迹

### mmls
- **能干什么**: 显示磁盘分区表信息
- **核心参数**:
  - 直接跟镜像文件
- **实战直觉**: 分析磁盘布局，找到隐藏分区或未分配空间

### fsstat
- **能干什么**: 显示文件系统的详细信息
- **核心参数**:
  - 镜像文件
- **实战直觉**: 获取文件系统类型、块大小、inode 数量等元数据

### istat
- **能干什么**: 显示特定 inode 的详细信息
- **核心参数**:
  - 镜像文件 inode号
- **实战直觉**: 查看文件的元数据（时间戳、权限、数据块位置）

---

## 系统服务

**标签**: `misc_tools`

### PowerShell
- **能干什么**: Windows PowerShell 在 Linux 上的实现
- **核心参数**: PowerShell 命令行
- **实战直觉**: 在 Kali 上编写和测试 PowerShell 脚本

---

## 系统网络配置发现

**标签**: `misc_tools`

### netmask
- **能干什么**: 网络地址计算工具，计算子网掩码和网络范围
- **核心参数**:
  - 直接跟 IP/CIDR（如 192.168.1.0/24）
  - `-s`: 标准输出格式
- **实战直觉**: 快速计算子网范围、广播地址、可用主机数，规划内网扫描范围

---

## 网络安全设备测试

**标签**: `misc_tools`

### wafw00f
- **能干什么**: Web 应用防火墙（WAF）指纹识别工具
- **核心参数**:
  - 直接跟 URL
  - `-a`: 测试所有 WAF
  - `-l`: 列出所有支持的 WAF
- **实战直觉**: 识别目标使用的 WAF 类型（Cloudflare、Akamai 等），选择对应的绕过技术

### tcpreplay
- **能干什么**: 重放 pcap 文件中的网络流量
- **核心参数**:
  - `-i`: 网络接口
  - `--topspeed`: 最快速度重放
  - `--mbps`: 指定重放速率
- **实战直觉**: 测试 IDS/IPS 规则，重放攻击流量，压力测试网络设备

### tcpreplay
- **能干什么**: 重放 pcap 文件中的网络流量
- **核心参数**:
  - `-i`: 网络接口
  - `--topspeed`: 最快速度重放
- **实战直觉**: 测试 IDS/IPS 规则，重放攻击流量

---

## 蓝牙工具

**标签**: `misc_tools`

### spooftooph
- **能干什么**: 蓝牙设备克隆和欺骗工具
- **核心参数**:
  - `-i`: 本地蓝牙接口
  - `-n`: 伪造的设备名
  - `-a`: 伪造的 MAC 地址
- **实战直觉**: 克隆蓝牙设备，绕过基于 MAC 的访问控制

---

## 账户发现与其他攻击

**标签**: `misc_tools`

### dns-rebind
- **能干什么**: DNS 重绑定攻击工具，通过 DNS 欺骗绕过浏览器同源策略
- **核心参数**:
  - 配置 DNS 服务器，设置重绑定规则
  - 指定目标内网 IP
- **实战直觉**: 绕过同源策略，让受害者浏览器访问内网服务，常用于攻击路由器管理界面

---

## 远程系统发现

**标签**: `misc_tools`

### atk6-thcping6
- **能干什么**: IPv6 存活主机探测工具，THC IPv6 攻击工具包的一部分
- **核心参数**:
  - 直接跟 IPv6 地址或网段
  - `-a`: 发送所有类型的 ICMPv6 包
- **实战直觉**: 在 IPv6 网络中发现存活主机，当目标使用 IPv6 时的首选探测工具

---

