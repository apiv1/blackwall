# 渗透测试状态机总览 (Penetration Testing State Machines Overview)

## 项目进度

### ✅ 阶段 1：工具枚举（已完成）
- 枚举了 199 个 Kali Linux 预装工具
- 记录了 208 个核心工具的详细文档（已去重和合并）
- 覆盖率：100%
- 详见：[项目总览 README.md](../README.md)

### ✅ 阶段 2：构建状态机（已完成）
已完成 14 个状态机，覆盖完整攻击链：

**信息收集阶段**：
1. ✅ 网络服务枚举状态机
2. ✅ SMB 枚举与攻击状态机
3. ✅ Web 应用扫描与攻击状态机

**初始访问阶段**：
4. ✅ 暴力破解攻击状态机
5. ✅ 漏洞利用状态机
6. ✅ 数据库攻击状态机

**权限提升阶段**：
7. ✅ 权限提升状态机
8. ✅ 密码攻击状态机

**持久化与横向移动**：
9. ✅ 后渗透和持久化状态机
10. ✅ Active Directory 攻击状态机
11. ✅ 凭据提取状态机

**高级技术**：
12. ✅ WiFi 攻击状态机
13. ✅ 网络嗅探和中间人攻击状态机
14. ✅ 隧道和代理状态机

### ✅ 阶段 3：场景决策链路（已完成）
- 每个状态机包含 5-6 个真实 HTB 案例
- 完整攻击路径演示
- If-Then-Else 决策树
- Mermaid 流程图可视化

---

## 已完成的状态机

### 1. 网络服务枚举状态机
**文件**：[01-network-service-enumeration.md](01-network-service-enumeration.md)

**核心工具**：
- nmap - 端口扫描与服务识别
- masscan - 超高速端口扫描
- unicornscan - 异步扫描
- hping3 - 防火墙测试
- netdiscover - 本地网络主机发现
- arping - ARP 层主机发现
- fping - 批量 ICMP 探测

**关键决策点**：
- 单个目标 vs 大范围扫描
- 本地网络 vs 远程网络
- ICMP 可用 vs 被禁用
- 防火墙严格 vs 一般

**场景案例**：
- HTB 靶机初始扫描
- 内网渗透主机发现

---

### 2. SMB 枚举与攻击状态机
**文件**：[02-smb-enumeration-attack.md](02-smb-enumeration-attack.md)

**核心工具**：
- nmap - SMB 服务发现
- enum4linux - SMB 全面枚举
- smbclient - SMB 客户端访问
- smbmap - SMB 共享权限检查
- netexec (crackmapexec) - SMB 批量测试
- impacket-psexec - 远程命令执行
- impacket-smbexec - 无 RemComSvc 的远程执行
- nbtscan - NetBIOS 扫描

**关键决策点**：
- SMBv1 vs SMBv2/v3
- Guest Access 开启 vs 需要认证
- 普通用户 vs 管理员权限
- 明文密码 vs NTLM 哈希

**场景案例**：
- 内网 SMB 枚举与横向移动
- Pass-the-Hash 横向移动

---

### 3. Web 应用扫描与攻击状态机
**文件**：[03-web-application-attack.md](03-web-application-attack.md)

**核心工具**：
- whatweb - Web 指纹识别
- nikto - Web 服务器漏洞扫描
- ffuf - 高速目录/文件爆破
- gobuster - 多功能爆破工具
- wpscan - WordPress 专用扫描器
- sqlmap - SQL 注入自动化工具
- burpsuite - Web 应用安全测试平台
- commix - 命令注入自动化工具
- wafw00f - WAF 识别

**关键决策点**：
- CMS vs 框架 vs 通用应用
- 有 WAF vs 无 WAF
- 发现漏洞 vs 无发现
- SQL 注入 vs 命令注入 vs 文件上传

**场景案例**：
- HTB 靶机 Web 应用渗透
- WordPress 站点渗透
- SQL 注入到 RCE

---

## 状态机设计原则

### 1. 原子工具状态映射
每个工具包含：
- **触发状态**：什么输入触发这个工具
- **核心命令**：最实战的命令组合
- **状态转移**：不同输出导向不同工具

### 2. 聚类攻击状态机
使用 If-Then-Else 逻辑：
```
IF 条件 A:
    THEN 执行工具 X
    IF 结果 Y:
        THEN 转移到状态 Z
    ELSE:
        THEN 转移到状态 W
ELSE:
    THEN 执行工具 V
```

### 3. 场景决策链路
包含：
- **场景还原**：初始条件和目标
- **状态机运行路径**：逐步执行过程
- **内化点**：为什么选择 A 而不是 B

### 4. 思维判定流程图
使用 Mermaid 语法绘制决策流程

---

## 工具选择决策框架

### 快速参考表

| 攻击阶段 | 首选工具 | 备选工具 | 使用场景 |
|---------|---------|---------|---------|
| **侦察** |
| 端口扫描 | nmap | masscan | 单目标 vs 大范围 |
| 主机发现 | netdiscover | arping/fping | 内网 vs 远程 |
| 指纹识别 | whatweb | wappalyzer | Web 应用 |
| **枚举** |
| SMB 枚举 | enum4linux | smbmap | 匿名 vs 有凭据 |
| Web 目录 | ffuf | gobuster | 速度 vs 稳定性 |
| DNS 枚举 | dnsenum | dnsrecon | 全面 vs 快速 |
| **利用** |
| SQL 注入 | sqlmap | 手动测试 | 自动化 vs 精确 |
| 命令注入 | commix | 手动测试 | 检测 vs 利用 |
| SMB 执行 | impacket-psexec | impacket-smbexec | 稳定 vs 隐蔽 |
| **后渗透** |
| 权限提升 | linpeas/winpeas | 手动枚举 | 自动 vs 手动 |
| 凭据提取 | mimikatz | secretsdump | Windows vs 离线 |
| 横向移动 | netexec | impacket | 批量 vs 单个 |

---

## 状态机之间的转移关系

```
[网络服务枚举]
    ↓
    ├─ 发现 445 端口 → [SMB 枚举与攻击]
    ├─ 发现 80/443 端口 → [Web 应用扫描与攻击]
    ├─ 发现 88/389 端口 → [Active Directory 攻击]
    └─ 发现其他服务 → [对应专项状态机]

[SMB 枚举与攻击]
    ↓
    ├─ 获得低权限 shell → [权限提升]
    ├─ 获得管理员权限 → [凭据提取] → [横向移动]
    └─ 发现域环境 → [Active Directory 攻击]

[Web 应用扫描与攻击]
    ↓
    ├─ 获得 webshell → [权限提升]
    ├─ 获得数据库访问 → [数据库攻击]
    └─ 获得凭据 → [横向移动]
```

---

## 使用指南

### 如何使用这些状态机

1. **确定当前阶段**
   - 根据已获得的信息，确定你处于哪个攻击阶段
   - 例如：发现 445 端口 → 使用 SMB 状态机

2. **查找对应状态机**
   - 打开对应的状态机文档
   - 阅读"原子工具状态映射"部分

3. **执行决策流程**
   - 根据当前状态，选择对应的工具
   - 执行命令，观察输出
   - 根据"状态转移"部分，决定下一步

4. **参考场景案例**
   - 查看"场景决策链路"部分
   - 学习真实案例中的决策过程
   - 理解"内化点"中的思维方式

5. **查看流程图**
   - 使用"思维判定流程图"快速理解决策逻辑
   - 在实战中对照流程图执行

---

## 下一步计划

### 即将构建的状态机

1. **Active Directory 攻击状态机**
   - Kerberos 攻击
   - LDAP 枚举
   - 域控制器攻击
   - 黄金票据/白银票据

2. **权限提升状态机**
   - Linux 提权
   - Windows 提权
   - 内核漏洞利用
   - 配置错误利用

3. **凭据提取状态机**
   - Windows 凭据提取
   - Linux 凭据提取
   - 浏览器凭据
   - 数据库凭据

4. **WiFi 攻击状态机**
   - WPA/WPA2 破解
   - WPS 攻击
   - Evil Twin 攻击
   - 握手包捕获

---

## 贡献与反馈

这是一个持续演进的项目，欢迎：
- 补充新的工具和技术
- 添加更多真实案例
- 优化决策逻辑
- 纠正错误和不足

---

*文档生成时间：2026-03-22*
*项目状态：阶段 2 进行中*
*完成度：3/7 状态机*
