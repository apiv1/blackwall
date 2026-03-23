# sslscan

## 简介
SSL/TLS 配置扫描工具

## 核心参数
- 目标主机:端口

## 命令示例
```bash
# 扫描 HTTPS 服务
sslscan target.com:443

# 扫描 SMTPS
sslscan target.com:465

# 显示证书
sslscan --show-certificate target.com:443

# 测试所有密码套件
sslscan --no-failed target.com:443

# 输出到 XML
sslscan --xml=output.xml target.com:443

# 详细输出
sslscan --verbose target.com:443
```

## 使用场景
检测 SSL/TLS 配置漏洞和弱加密套件

## 所属分类
- [SNMP/SMTP/SSL-TLS 工具](../categories/28-snmp-smtp-ssl.md)
