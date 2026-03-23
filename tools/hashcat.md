# hashcat

## 简介
GPU 加速的密码破解工具，支持 300+ 种哈希类型

## 核心参数
- `-m`: 指定哈希类型（如 0=MD5, 1000=NTLM）
- `-a`: 攻击模式（0=字典, 3=掩码）
- `-w`: 工作负载配置（1-4）
- `--show`: 显示已破解的密码

## 命令示例
```bash
# MD5 破解
hashcat -m 0 -a 0 hash.txt /usr/share/wordlists/rockyou.txt

# NTLM 破解
hashcat -m 1000 -a 0 ntlm_hash.txt wordlist.txt

# SHA256 破解
hashcat -m 1400 -a 0 sha256_hash.txt wordlist.txt

# 使用规则
hashcat -m 0 -a 0 hash.txt wordlist.txt -r rules/best64.rule

# 暴力破解（掩码攻击）
hashcat -m 0 -a 3 hash.txt ?a?a?a?a?a?a
```

## 使用场景
当你获取到哈希值需要破解时，hashcat 的 GPU 加速能提供最快的破解速度

## 所属分类
- [密码破解 (Password Cracking)](../categories/08-password-cracking.md)
