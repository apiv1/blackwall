# SSL/TLS 工具

## 简介
SNMP 枚举工具，提取设备信息

## 核心参数
- `--no-failed`: 只显示支持的密码
- `--regular`: 标准扫描
- `--heartbleed`: 检测心脏滴血漏洞
- `--json_out`: JSON 格式输出
- `--no-failed`: 只显示支持的密码
- `--xml`: XML 格式输出
- `--show-certificate`: 显示证书详情
- `--to`: 收件人
- `--from`: 发件人
- `--server`: SMTP 服务器
- `--auth`: 认证方式
- `-c`: community string
- `-v`: SNMP 版本（1、2c、3）
- `-p`: 端口

## 命令示例
```bash
# SSL/TLS 工具
# 使用 sslscan
sslscan target.com:443

# 使用 sslyze
sslyze --regular target.com
```

## 使用场景
获取 SNMP 访问后，枚举设备配置、接口信息、路由表等敏感信息

## 所属分类
- [SNMP/SMTP/SSL-TLS 工具](../categories/28-snmp-smtp-ssl.md)
