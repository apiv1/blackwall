# onesixtyone

## 简介
快速 SNMP 扫描器

## 核心参数
- `-c`: community string 列表
- `-i`: 目标列表

## 命令示例
```bash
# 扫描单个主机
onesixtyone 192.168.1.100

# 使用 community string 列表
onesixtyone -c community.txt 192.168.1.100

# 扫描多个主机
onesixtyone -c community.txt -i hosts.txt

# 扫描网段
onesixtyone -c community.txt 192.168.1.0/24

# 详细输出
onesixtyone -d -c community.txt 192.168.1.100
```

## 使用场景
快速扫描 SNMP 服务和 community strings

## 所属分类
- [SNMP/SMTP/SSL-TLS 工具](../categories/28-snmp-smtp-ssl.md)
