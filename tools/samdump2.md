# samdump2

## 简介
从 Windows SAM 文件中提取密码哈希

## 核心参数
- SAM 文件路径
- SYSTEM 文件路径

## 命令示例
```bash
# 提取哈希
samdump2 SYSTEM SAM

# 输出到文件
samdump2 SYSTEM SAM > hashes.txt

# 从备份提取
samdump2 /mnt/windows/System32/config/SYSTEM /mnt/windows/System32/config/SAM
```

## 使用场景
离线提取 Windows 密码哈希

## 所属分类
- [OS 凭据转储 (OS Credential Dumping)](../categories/14-os-credential-dumping.md)
