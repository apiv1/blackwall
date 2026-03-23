# sslyze

## 简介
快速全面的 SSL/TLS 扫描工具

## 核心参数
- `--regular`: 标准扫描
- `--certinfo`: 证书信息

## 命令示例
```bash
# 基本扫描
sslyze target.com

# 扫描特定端口
sslyze target.com:8443

# 检查证书
sslyze --certinfo target.com

# 检查心脏滴血漏洞
sslyze --heartbleed target.com

# 检查多个漏洞
sslyze --heartbleed --robot --reneg target.com

# 输出到 JSON
sslyze --json_out=output.json target.com
```

## 使用场景
全面的 SSL/TLS 安全评估

## 所属分类
- [SNMP/SMTP/SSL-TLS 工具](../categories/28-snmp-smtp-ssl.md)
