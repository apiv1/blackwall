# SNMP/SMTP/SSL-TLS 工具

## SNMP 工具

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

## SMTP 工具

### smtp-user-enum
- **能干什么**: 通过 SMTP 协议枚举有效用户名
- **核心参数**:
  - `-M`: 枚举方法（VRFY、EXPN、RCPT）
  - `-U`: 用户名列表文件
  - `-t`: 目标主机
- **实战直觉**: 通过 SMTP 服务枚举邮箱用户，为后续攻击（暴力破解、钓鱼）提供目标列表

### swaks
- **能干什么**: SMTP 测试工具，发送测试邮件
- **核心参数**:
  - `--to`: 收件人
  - `--from`: 发件人
  - `--server`: SMTP 服务器
- **实战直觉**: 测试 SMTP 配置，发送钓鱼邮件

## SSL/TLS 工具

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

## sslscan
- **能干什么**: 快速扫描 SSL/TLS 配置，检测弱加密套件
- **核心参数**:
  - `--no-failed`: 只显示支持的加密套件
  - `--xml`: XML 输出
- **实战直觉**: 快速发现 SSL 配置问题，如过期协议（SSLv2/v3）、弱加密

## sslyze
- **能干什么**: 全面的 SSL/TLS 安全扫描工具
- **核心参数**:
  - `--regular`: 标准扫描
  - `--heartbleed`: 检测心脏滴血漏洞
- **实战直觉**: 比 sslscan 更详细，检测各种 SSL 漏洞和配置问题

## onesixtyone
- **能干什么**: 快速 SNMP 扫描工具
- **核心参数**:
  - `-c`: community string 字典
  - `-i`: 目标 IP 列表
- **实战直觉**: 暴力破解 SNMP community string，获取网络设备信息

## snmp-check
- **能干什么**: 枚举 SNMP 设备信息
- **核心参数**:
  - `-c`: community string
  - `-v`: SNMP 版本
- **实战直觉**: 成功连接后提取设备详细信息，包括系统信息、网络配置等

## smtp-user-enum
- **能干什么**: 枚举 SMTP 服务器的有效用户
- **核心参数**:
  - `-M`: 枚举模式（VRFY/EXPN/RCPT）
  - `-U`: 用户名列表
  - `-t`: 目标主机
- **实战直觉**: 通过 SMTP 协议枚举有效用户名，为后续爆破做准备

## swaks
- **能干什么**: SMTP 测试工具，发送测试邮件
- **核心参数**:
  - `--to`: 收件人
  - `--from`: 发件人
  - `--server`: SMTP 服务器
- **实战直觉**: 测试 SMTP 配置，发送钓鱼邮件，验证邮件过滤规则
