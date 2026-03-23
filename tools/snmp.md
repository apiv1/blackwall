# SNMP 工具

## 简介
SNMP 枚举工具，提取设备信息

## 核心参数
- `-c`: community string 字典文件
- `-i`: 目标 IP 列表文件
- 或直接：`onesixtyone <IP> <community>`
- `-c`: community string
- `-v`: SNMP 版本

## 命令示例
```bash
# SNMP 工具
# 使用 snmp-check
snmp-check 192.168.1.100

# 使用 onesixtyone
onesixtyone -c community.txt 192.168.1.100
```

## 使用场景
获取 SNMP 访问后，枚举设备配置和敏感信息

## 所属分类
- [SNMP/SMTP/SSL-TLS 工具](../categories/28-snmp-smtp-ssl.md)
