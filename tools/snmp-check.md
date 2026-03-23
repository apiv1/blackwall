# snmp-check

## 简介
SNMP 枚举工具

## 核心参数
- `-t`: 目标主机
- `-c`: Community string

## 命令示例
```bash
# 基本枚举
snmp-check 192.168.1.100

# 指定 community string
snmp-check -c public 192.168.1.100

# 详细输出
snmp-check -v 192.168.1.100

# 指定端口
snmp-check -p 161 192.168.1.100

# 输出到文件
snmp-check 192.168.1.100 > snmp_info.txt
```

## 使用场景
枚举 SNMP 服务信息

## 所属分类
- [SNMP/SMTP/SSL-TLS 工具](../categories/28-snmp-smtp-ssl.md)
