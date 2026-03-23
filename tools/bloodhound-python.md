# bloodhound-python

## 简介
BloodHound 的 Python 数据收集器，枚举 AD 关系

## 核心参数
- `-u`: 用户名
- `-p`: 密码
- `-d`: 域名
- `-c`: 收集类型

## 命令示例
```bash
# 基本收集
bloodhound-python -u user -p password -d domain.com -ns 192.168.1.10

# 收集所有信息
bloodhound-python -u user -p password -d domain.com -ns 192.168.1.10 -c all

# 只收集用户和组
bloodhound-python -u user -p password -d domain.com -ns 192.168.1.10 -c group,user

# 使用 NTLM 哈希
bloodhound-python -u user --hashes :ntlm_hash -d domain.com -ns 192.168.1.10

# 指定域控制器
bloodhound-python -u user -p password -d domain.com -dc dc01.domain.com

# 输出到指定目录
bloodhound-python -u user -p password -d domain.com -ns 192.168.1.10 --zip
```

## 使用场景
Active Directory 环境的关系枚举和攻击路径分析

## 所属分类
- [Active Directory](../categories/23-active-directory.md)
