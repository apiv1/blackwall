# Blackwall - Kali Linux 渗透测试知识库

> 从工具枚举到攻击状态机的完整渗透测试方法论

## 📊 项目概览

这是一个系统化的 Kali Linux 渗透测试知识库，通过"自下而上"的方式构建了从工具到决策的完整逻辑链。项目包含 **208 个工具的实战文档** 和 **14 个攻击状态机**，覆盖从信息收集到后渗透的完整攻击链。

### 🎯 核心特点

- **人话描述**：所有工具和技术都用"人话"而非技术文档语言描述
- **实战导向**：每个工具都包含"能干什么/核心参数/实战直觉"
- **决策驱动**：14 个状态机提供 If-Then-Else 决策逻辑
- **场景丰富**：70+ 个真实 HTB 靶机场景案例
- **可视化**：Mermaid 流程图展示攻击决策路径

## 📈 项目统计

| 指标 | 数量 | 说明 |
|------|------|------|
| **工具总数** | 208 个 | 已去重和合并的独立工具 |
| **状态机数量** | 14 个 | 覆盖完整攻击链 |
| **HTB 场景** | 70+ 个 | 真实靶机攻击案例 |
| **文档文件** | 48 个 | 34 个工具分类 + 14 个状态机 |
| **覆盖率** | 100% | 所有核心工具已记录 |

## 🗂️ 项目结构

```
blackwall/
├── README.md                    # 项目总览（本文件）
├── requirement.md               # 原始需求文档
├── tools/                       # 工具文档目录
│   ├── ALL_TOOLS_FLAT.md       # 208 个工具平铺列表（多标签）
│   ├── README.md               # 工具分类总览
│   ├── 01-network-information.md
│   ├── 02-dns-enumeration.md
│   ├── ... (共 34 个分类文件)
│   └── 34-system-tools.md
└── state-machines/              # 攻击状态机目录
    ├── README.md               # 状态机总览
    ├── 01-network-service-enumeration.md
    ├── 02-smb-enumeration-attack.md
    ├── ... (共 14 个状态机)
    └── 14-tunneling-pivoting.md
```

## 🛠️ 工具文档

### 工具分类（34 个类别）

按照 MITRE ATT&CK 攻击链组织：

**侦察阶段**：
- 网络信息收集（nmap, masscan, netdiscover）
- DNS 枚举（dnsenum, dnsrecon, fierce）
- 服务发现（unicornscan, hping3, arping）

**初始访问**：
- Web 漏洞扫描（nikto, wpscan, whatweb）
- 目录爆破（ffuf, gobuster, dirb）
- 暴力破解（hydra, medusa, patator）
- WiFi 攻击（aircrack-ng, wifite, reaver）

**权限提升**：
- 自动化枚举（linpeas, winpeas）
- 漏洞利用（searchsploit, metasploit）

**凭据访问**：
- 密码破解（hashcat, john, ophcrack）
- 哈希识别（hash-identifier, hashid）
- Pass-the-Hash（impacket 工具集）

**横向移动**：
- SMB 攻击（enum4linux, smbmap, smbclient）
- 远程执行（impacket-psexec, evil-winrm）
- RDP 工具（rdesktop, xfreerdp）

**持久化**：
- Webshell（weevely, webshells）
- 后门工具（backdoor-factory）

**数据渗出**：
- 文件传输（netcat, socat, impacket-smbserver）
- 隧道工具（proxychains4, chisel, dns2tcp）

### 工具文档格式

每个工具包含三个核心部分：

```markdown
## 工具名称

**标签**: `attack_phase`

- **能干什么**: 一句话说明工具的唯一价值
- **核心参数**:
  - 参数 1: 说明
  - 参数 2: 说明
- **实战直觉**: 在什么场景下它是首选工具
```

### 快速查找

- **按分类查找**：查看 [tools/README.md](tools/README.md)
- **按标签查找**：查看 [tools/ALL_TOOLS_FLAT.md](tools/ALL_TOOLS_FLAT.md)
- **按攻击阶段**：查看对应的状态机文档

## 🔄 攻击状态机

### 14 个状态机覆盖完整攻击链

**信息收集阶段**：
1. [网络服务枚举](state-machines/01-network-service-enumeration.md) - 端口扫描、服务识别、主机发现
2. [SMB 枚举与攻击](state-machines/02-smb-enumeration-attack.md) - SMB 共享枚举、Pass-the-Hash
3. [Web 应用攻击](state-machines/03-web-application-attack.md) - 目录爆破、SQL 注入、文件上传

**初始访问阶段**：
4. [暴力破解攻击](state-machines/09-brute-force-attack.md) - SSH/RDP/Web 暴力破解、密码喷洒
5. [漏洞利用](state-machines/12-exploitation.md) - Metasploit、searchsploit、手动利用
6. [数据库攻击](state-machines/13-database-attack.md) - MySQL/MSSQL/PostgreSQL 攻击链

**权限提升阶段**：
7. [权限提升](state-machines/05-privilege-escalation.md) - Linux/Windows 提权技术
8. [密码攻击](state-machines/08-password-attack.md) - 在线/离线密码破解、字典生成

**持久化与横向移动**：
9. [后渗透和持久化](state-machines/11-post-exploitation-persistence.md) - 权限维持、横向移动、痕迹清理
10. [Active Directory 攻击](state-machines/04-active-directory-attack.md) - Kerberos、LDAP、域控攻击
11. [凭据提取](state-machines/06-credential-extraction.md) - Windows/Linux 凭据窃取

**高级技术**：
12. [WiFi 攻击](state-machines/07-wifi-attack.md) - WPA/WPA2 破解、Evil Twin
13. [网络嗅探和中间人攻击](state-machines/10-network-sniffing-mitm.md) - ARP 欺骗、SSL 剥离
14. [隧道和代理](state-machines/14-tunneling-pivoting.md) - SSH 隧道、HTTP 隧道、内网穿透

### 状态机特点

每个状态机包含：

1. **Mermaid 流程图** - 可视化决策路径
2. **状态转换表** - 当前状态 → 条件 → 动作 → 下一状态
3. **If-Then-Else 决策树** - 逻辑判断流程
4. **5-6 个 HTB 场景** - 真实靶机攻击案例
5. **工具对比表** - 不同工具的优劣势分析
6. **关键技巧** - 实战中的高级技巧
7. **防御检测** - 攻击者视角的防御绕过

### 状态机示例

```
IF 发现 445 端口
  THEN 运行 nmap SMB 脚本
    IF 发现 Guest Access
      THEN 使用 smbclient 枚举共享
        IF 发现可写共享
          THEN 上传 webshell
        ELSE
          尝试 SMB 漏洞利用
    ELSE IF 有凭据
      THEN 使用 crackmapexec 测试
    ELSE
      转向其他攻击向量
```

## 🎓 使用指南

### 1. 工具查找

**场景 1：我发现了 445 端口，不知道用什么工具**
1. 查看 [01-network-service-enumeration.md](state-machines/01-network-service-enumeration.md)
2. 找到"发现 445 端口"的决策分支
3. 跟随状态机指引到 [02-smb-enumeration-attack.md](state-machines/02-smb-enumeration-attack.md)
4. 按照决策树执行攻击

**场景 2：我想学习 SQL 注入攻击**
1. 查看 [03-web-application-attack.md](state-machines/03-web-application-attack.md)
2. 找到"SQL 注入"部分
3. 学习决策逻辑和 HTB 案例
4. 查看 [tools/03-web-vulnerability-scanning.md](tools/03-web-vulnerability-scanning.md) 了解 sqlmap 用法

**场景 3：我需要在内网横向移动**
1. 查看 [11-post-exploitation-persistence.md](state-machines/11-post-exploitation-persistence.md)
2. 找到"横向移动"部分
3. 根据当前凭据类型（明文密码/哈希/票据）选择技术
4. 参考 [04-active-directory-attack.md](state-machines/04-active-directory-attack.md) 了解域环境攻击

### 2. 学习路径

**初学者路径**：
1. 阅读 [requirement.md](requirement.md) 了解项目背景
2. 浏览 [tools/README.md](tools/README.md) 熟悉工具分类
3. 从 [01-network-service-enumeration.md](state-machines/01-network-service-enumeration.md) 开始学习
4. 按照攻击链顺序学习其他状态机

**进阶路径**：
1. 直接查找感兴趣的攻击技术状态机
2. 学习决策树和 HTB 案例
3. 在实战中应用状态机逻辑
4. 总结自己的"内化点"

### 3. 实战应用

**HTB 靶机攻击流程**：
1. 运行 nmap 扫描 → 查看 [01-network-service-enumeration.md](state-machines/01-network-service-enumeration.md)
2. 根据开放端口选择对应状态机
3. 按照决策树执行攻击
4. 遇到问题时查看"关键技巧"部分
5. 获得 shell 后查看 [11-post-exploitation-persistence.md](state-machines/11-post-exploitation-persistence.md)

## 📝 项目历程

### 阶段 1：工具枚举（已完成）
- ✅ 从 Kali Linux .desktop 文件提取 199 个工具
- ✅ 按 MITRE ATT&CK 分类
- ✅ 为每个工具编写"能干什么/核心参数/实战直觉"
- ✅ 去重和合并，最终 208 个独立工具

### 阶段 2：状态机构建（已完成）
- ✅ 构建 14 个攻击状态机
- ✅ 每个状态机包含 Mermaid 流程图
- ✅ 编写 If-Then-Else 决策树
- ✅ 添加 70+ 个 HTB 场景案例

### 阶段 3：场景决策链路（已完成）
- ✅ 每个状态机包含 5-6 个真实场景
- ✅ 完整攻击路径演示
- ✅ 内化点分析（为什么选择 A 而不是 B）

## 🔗 快速链接

### 核心文档
- [项目需求](requirement.md) - 了解项目背景和目标
- [工具总览](tools/README.md) - 34 个工具分类
- [工具平铺列表](tools/ALL_TOOLS_FLAT.md) - 208 个工具按标签组织
- [状态机总览](state-machines/README.md) - 14 个攻击状态机

### 常用状态机
- [网络服务枚举](state-machines/01-network-service-enumeration.md) - 从这里开始
- [Web 应用攻击](state-machines/03-web-application-attack.md) - Web 渗透必读
- [权限提升](state-machines/05-privilege-escalation.md) - 提权技术大全
- [后渗透和持久化](state-machines/11-post-exploitation-persistence.md) - 获得 shell 后必读

### 专项技术
- [Active Directory 攻击](state-machines/04-active-directory-attack.md) - 域环境渗透
- [密码攻击](state-machines/08-password-attack.md) - 密码破解技术
- [数据库攻击](state-machines/13-database-attack.md) - 数据库渗透
- [隧道和代理](state-machines/14-tunneling-pivoting.md) - 内网穿透

## 🎯 设计理念

### 1. 自下而上的知识构建
不是传统的"先学理论再实践"，而是：
- 先枚举所有工具（原子单元）
- 再构建工具之间的状态转换（决策逻辑）
- 最后通过真实场景内化（实战应用）

### 2. 状态机驱动的决策
每个攻击阶段都是一个状态机：
- **当前状态**：你现在掌握的信息
- **条件判断**：根据输出做决策
- **状态转移**：选择下一个工具
- **目标状态**：获得更多信息或权限

### 3. 人话描述的实战直觉
避免技术文档式的枯燥描述：
- ❌ "nmap 是一个网络扫描工具，用于发现主机和服务"
- ✅ "nmap - 渗透测试的第一步，告诉你目标开了哪些门"

### 4. 场景驱动的学习
每个技术都配合真实 HTB 靶机案例：
- 场景还原：初始条件
- 攻击路径：逐步执行
- 内化点：为什么这样做

## 📊 工具统计

### 按攻击阶段分类

| 阶段 | 工具数量 | 代表工具 |
|------|---------|---------|
| 侦察 | 30+ | nmap, masscan, dnsenum |
| 初始访问 | 50+ | ffuf, sqlmap, hydra |
| 权限提升 | 10+ | linpeas, winpeas, searchsploit |
| 凭据访问 | 25+ | hashcat, john, mimikatz |
| 横向移动 | 15+ | impacket-psexec, crackmapexec |
| 持久化 | 10+ | weevely, webshells |
| 数据渗出 | 15+ | netcat, socat, chisel |
| 专项技术 | 50+ | aircrack-ng, burpsuite, metasploit |

### 按工具类型分类

| 类型 | 数量 | 说明 |
|------|------|------|
| 扫描器 | 40+ | 端口扫描、漏洞扫描、目录爆破 |
| 暴力破解 | 20+ | 密码破解、哈希破解、服务暴力破解 |
| 漏洞利用 | 15+ | Metasploit、exploit-db、手动利用 |
| 后渗透 | 30+ | 权限提升、凭据提取、横向移动 |
| 网络工具 | 25+ | 嗅探、MITM、隧道、代理 |
| 专项工具 | 78+ | WiFi、AD、数据库、取证 |

## 🚀 未来计划

### 短期计划
- [ ] 添加更多 HTB 靶机案例
- [ ] 补充 OSCP 考试相关技巧
- [ ] 添加防御者视角的检测方法

### 长期计划
- [ ] 构建交互式决策树工具
- [ ] 添加视频演示
- [ ] 建立社区贡献机制

## 📄 许可证

本项目仅用于教育和授权的安全测试目的。使用本项目中的技术和工具时，请遵守当地法律法规。

## 🙏 致谢

- Kali Linux 团队提供的优秀渗透测试平台
- Hack The Box 提供的实战靶机环境
- MITRE ATT&CK 框架提供的攻击分类方法

---

*最后更新：2026-03-22*
*Kali Linux 版本：2025.4*
*项目状态：✅ 完成*
