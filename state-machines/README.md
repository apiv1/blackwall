# 攻击状态机总览

本目录包含 14 个完整的攻击状态机，覆盖从信息收集到后渗透的完整攻击链。每个状态机都包含 Mermaid 流程图、If-Then-Else 决策树、5-6 个 HTB 真实场景案例。

## 📊 状态机列表

### 信息收集阶段 (Reconnaissance)

#### 1. [网络服务枚举](01-network-service-enumeration.md)
**核心工具**：nmap, masscan, unicornscan, hping3, netdiscover, arping, fping

**关键决策点**：
- 单个目标 vs 大范围扫描
- 本地网络 vs 远程网络
- ICMP 可用 vs 被禁用
- 防火墙严格 vs 一般

**典型场景**：HTB 靶机初始扫描、内网渗透主机发现

---

#### 2. [SMB 枚举与攻击](02-smb-enumeration-attack.md)
**核心工具**：enum4linux, smbclient, smbmap, netexec, impacket-psexec, impacket-smbexec

**关键决策点**：
- SMBv1 vs SMBv2/v3
- Guest Access 开启 vs 需要认证
- 普通用户 vs 管理员权限
- 明文密码 vs NTLM 哈希

**典型场景**：内网 SMB 枚举与横向移动、Pass-the-Hash 攻击

---

#### 3. [Web 应用攻击](03-web-application-attack.md)
**核心工具**：whatweb, nikto, ffuf, gobuster, wpscan, sqlmap, burpsuite, commix

**关键决策点**：
- CMS vs 框架 vs 通用应用
- 有 WAF vs 无 WAF
- SQL 注入 vs 命令注入 vs 文件上传

**典型场景**：HTB 靶机 Web 应用渗透、WordPress 站点渗透、SQL 注入到 RCE

---

### 初始访问阶段 (Initial Access)

#### 4. [Active Directory 攻击](04-active-directory-attack.md)
**核心工具**：bloodhound-python, impacket 工具集, netexec, mimikatz

**关键决策点**：
- Kerberos 攻击（AS-REP Roasting, Kerberoasting）
- LDAP 枚举
- 域控制器攻击
- 黄金票据/白银票据

**典型场景**：域环境渗透、域控权限获取

---

#### 9. [暴力破解攻击](09-brute-force-attack.md)
**核心工具**：hydra, medusa, ncrack, patator

**关键决策点**：
- SSH/RDP/Web 暴力破解
- 密码喷洒 vs 传统暴力破解
- 字典选择策略

**典型场景**：服务登录暴力破解、密码喷洒攻击

---

#### 12. [漏洞利用](12-exploitation.md)
**核心工具**：metasploit-framework, searchsploit, msfvenom

**关键决策点**：
- 自动化利用 vs 手动利用
- Payload 选择
- 反弹 shell vs 正向连接

**典型场景**：已知漏洞利用、Exploit-DB 搜索与利用

---

#### 13. [数据库攻击](13-database-attack.md)
**核心工具**：sqlmap, impacket-mssqlclient, mysql 客户端

**关键决策点**：
- MySQL vs MSSQL vs PostgreSQL
- SQL 注入 vs 直接访问
- 数据提取 vs 命令执行

**典型场景**：数据库渗透、SQL 注入利用、xp_cmdshell 执行

---

### 权限提升阶段 (Privilege Escalation)

#### 5. [权限提升](05-privilege-escalation.md)
**核心工具**：linpeas, winpeas, unix-privesc-check

**关键决策点**：
- Linux vs Windows 提权
- 内核漏洞 vs 配置错误
- SUID/Sudo vs 服务漏洞

**典型场景**：Linux 提权、Windows 提权、容器逃逸

---

#### 8. [密码攻击](08-password-attack.md)
**核心工具**：hashcat, john, hash-identifier, hashid

**关键决策点**：
- 在线破解 vs 离线破解
- 哈希类型识别
- 字典攻击 vs 规则攻击 vs 暴力破解

**典型场景**：哈希破解、密码字典生成、规则攻击

---

### 持久化与横向移动 (Persistence & Lateral Movement)

#### 11. [后渗透和持久化](11-post-exploitation-persistence.md)
**核心工具**：weevely, webshells, impacket-psexec, netexec

**关键决策点**：
- Webshell vs 系统后门
- 权限维持策略
- 横向移动技术
- 痕迹清理

**典型场景**：获得 shell 后的操作、内网横向移动、权限维持

---

#### 6. [凭据提取](06-credential-extraction.md)
**核心工具**：mimikatz, impacket-secretsdump, samdump2, chntpw

**关键决策点**：
- Windows vs Linux 凭据提取
- 内存提取 vs 离线提取
- NTLM 哈希 vs 明文密码

**典型场景**：Windows 凭据窃取、SAM 数据库提取、域凭据获取

---

### 高级技术 (Advanced Techniques)

#### 7. [WiFi 攻击](07-wifi-attack.md)
**核心工具**：aircrack-ng, wifite, reaver, bully, pixiewps

**关键决策点**：
- WPA/WPA2 破解 vs WPS 攻击
- 握手包捕获策略
- Evil Twin 攻击

**典型场景**：WiFi 密码破解、WPS PIN 攻击、无线网络渗透

---

#### 10. [网络嗅探和中间人攻击](10-network-sniffing-mitm.md)
**核心工具**：tcpdump, wireshark, arpspoof, mitmproxy, responder

**关键决策点**：
- ARP 欺骗 vs DNS 欺骗
- SSL 剥离策略
- LLMNR/NBT-NS 投毒

**典型场景**：内网流量嗅探、中间人攻击、凭据捕获

---

#### 14. [隧道和代理](14-tunneling-pivoting.md)
**核心工具**：proxychains4, chisel, dns2tcp, stunnel4, socat

**关键决策点**：
- SSH 隧道 vs HTTP 隧道 vs DNS 隧道
- 正向代理 vs 反向代理
- SOCKS vs HTTP 代理

**典型场景**：内网穿透、多层网络渗透、流量隧道

---

## 🎯 状态机特点

每个状态机文档包含以下内容：

### 1. Mermaid 流程图
可视化决策路径，快速理解攻击流程

### 2. 状态转换表
| 当前状态 | 条件 | 动作 | 下一状态 |
|---------|------|------|---------|
| 初始状态 | 条件判断 | 执行工具 | 目标状态 |

### 3. If-Then-Else 决策树
```
IF 条件 A
  THEN 执行工具 X
    IF 结果 Y
      THEN 转移到状态 Z
    ELSE
      THEN 转移到状态 W
ELSE
  THEN 执行工具 V
```

### 4. HTB 场景案例
5-6 个真实靶机攻击案例，包含：
- 场景还原：初始条件
- 攻击路径：逐步执行
- 内化点：为什么这样做

### 5. 工具对比表
不同工具的优劣势分析，帮助选择最合适的工具

### 6. 关键技巧
实战中的高级技巧和注意事项

### 7. 防御检测
攻击者视角的防御绕过技术

---

## 🔄 状态机之间的转移关系

```
[网络服务枚举]
    ↓
    ├─ 发现 445 端口 → [SMB 枚举与攻击]
    ├─ 发现 80/443 端口 → [Web 应用攻击]
    ├─ 发现 88/389 端口 → [Active Directory 攻击]
    ├─ 发现 1433/3306 端口 → [数据库攻击]
    └─ 发现其他服务 → [对应专项状态机]

[SMB 枚举与攻击] / [Web 应用攻击] / [数据库攻击]
    ↓
    ├─ 获得低权限 shell → [权限提升]
    ├─ 获得管理员权限 → [凭据提取] → [横向移动]
    └─ 发现域环境 → [Active Directory 攻击]

[权限提升]
    ↓
    ├─ 获得 root/SYSTEM → [凭据提取]
    ├─ 发现其他主机 → [横向移动]
    └─ 需要维持访问 → [后渗透和持久化]

[凭据提取]
    ↓
    ├─ 获得明文密码 → [横向移动]
    ├─ 获得哈希 → [密码攻击] → [横向移动]
    └─ 获得票据 → [Active Directory 攻击]
```

---

## 📖 使用指南

### 如何使用这些状态机

#### 1. 确定当前阶段
根据已获得的信息，确定你处于哪个攻击阶段：
- 刚开始扫描 → 网络服务枚举
- 发现特定端口 → 对应服务的状态机
- 获得 shell → 权限提升
- 获得高权限 → 后渗透和持久化

#### 2. 查找对应状态机
打开对应的状态机文档，快速浏览：
- Mermaid 流程图：理解整体流程
- 决策树：找到当前状态对应的分支

#### 3. 执行决策流程
- 根据当前状态，选择对应的工具
- 执行命令，观察输出
- 根据"状态转移"部分，决定下一步

#### 4. 参考场景案例
- 查看"HTB 场景案例"部分
- 学习真实案例中的决策过程
- 理解"内化点"中的思维方式

#### 5. 工具选择
- 查看"工具对比表"
- 根据场景选择最合适的工具
- 参考"关键技巧"优化攻击效果

---

## 🎓 学习路径

### 初学者路径
1. 从 [网络服务枚举](01-network-service-enumeration.md) 开始
2. 按照攻击链顺序学习：侦察 → 初始访问 → 权限提升 → 后渗透
3. 每个状态机都完整学习一遍
4. 在 HTB 靶机上实践

### 进阶路径
1. 直接查找感兴趣的攻击技术状态机
2. 深入学习决策树和工具对比
3. 研究 HTB 案例中的"内化点"
4. 总结自己的攻击方法论

### 实战路径
1. 遇到问题时快速查找对应状态机
2. 按照决策树执行攻击
3. 参考"关键技巧"解决卡点
4. 记录自己的经验和教训

---

## 🔗 相关资源

- [工具索引](../tools/README.md) - 查找具体工具的详细用法
- [分类索引](../categories/README.md) - 按攻击链查找工具
- [项目总览](../README.md) - 了解项目背景和设计理念

---

*最后更新：2026-03-22*
*状态机数量：14 个*
*HTB 场景：70+ 个*
