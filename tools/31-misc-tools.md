# 其他工具 (Miscellaneous)

## 蓝牙工具

### spooftooph
- **能干什么**: 蓝牙设备克隆和欺骗工具
- **核心参数**:
  - `-i`: 本地蓝牙接口
  - `-n`: 伪造的设备名
  - `-a`: 伪造的 MAC 地址
- **实战直觉**: 克隆蓝牙设备，绕过基于 MAC 的访问控制

## VoIP 工具

### voiphopper
- **能干什么**: VoIP VLAN 跳跃工具，通过 CDP/LLDP 协议跳到语音 VLAN
- **核心参数**:
  - `-i`: 网络接口
  - `-c`: CDP 模式
  - `-E`: 指定目标 VLAN ID
- **实战直觉**: 从数据 VLAN 跳到语音 VLAN，访问 VoIP 网络，绕过网络隔离

## 网络安全设备测试

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

## 应用层协议工具

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

## 系统网络配置发现

### netmask
- **能干什么**: 网络地址计算工具，计算子网掩码和网络范围
- **核心参数**:
  - 直接跟 IP/CIDR（如 192.168.1.0/24）
  - `-s`: 标准输出格式
- **实战直觉**: 快速计算子网范围、广播地址、可用主机数，规划内网扫描范围

## 侦察工具

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

## 执行工具

### powersploit
- **能干什么**: PowerShell 后渗透框架，包含多个 PowerShell 模块
- **核心参数**:
  - `Import-Module PowerSploit.psd1`: 导入模块
  - `Get-Command -Module PowerSploit`: 查看所有命令
  - 包含 Invoke-Mimikatz、PowerView 等模块
- **实战直觉**: Windows 后渗透的 PowerShell 工具集，内存中执行，无文件落地

## 加密保护

### cryptsetup
- **能干什么**: Linux 磁盘加密工具（LUKS）
- **核心参数**:
  - `luksFormat`: 格式化加密分区
  - `luksOpen`: 打开加密分区
- **实战直觉**: 保护敏感数据，加密存储设备

## 远程系统发现

### atk6-thcping6
- **能干什么**: IPv6 存活主机探测工具，THC IPv6 攻击工具包的一部分
- **核心参数**:
  - 直接跟 IPv6 地址或网段
  - `-a`: 发送所有类型的 ICMPv6 包
- **实战直觉**: 在 IPv6 网络中发现存活主机，当目标使用 IPv6 时的首选探测工具

## PDF 取证

### pdfid
- **能干什么**: 分析 PDF 文件结构，检测恶意内容
- **核心参数**:
  - 直接跟 PDF 文件路径
- **实战直觉**: 快速识别 PDF 中的可疑元素（JavaScript、嵌入文件等）

### pdf-parser
- **能干什么**: 深度解析 PDF 文件结构
- **核心参数**:
  - `--search`: 搜索特定对象
  - `--object`: 查看特定对象
- **实战直觉**: 提取 PDF 中的恶意代码或隐藏数据

## 账户发现与其他攻击

### dns-rebind
- **能干什么**: DNS 重绑定攻击工具，通过 DNS 欺骗绕过浏览器同源策略
- **核心参数**:
  - 配置 DNS 服务器，设置重绑定规则
  - 指定目标内网 IP
- **实战直觉**: 绕过同源策略，让受害者浏览器访问内网服务，常用于攻击路由器管理界面

## 系统服务

### PowerShell
- **能干什么**: Windows PowerShell 在 Linux 上的实现
- **核心参数**: PowerShell 命令行
- **实战直觉**: 在 Kali 上编写和测试 PowerShell 脚本
