# wordlists

## 简介
Kali Linux 预装的密码字典集合

## 核心参数
- 字典文件路径

## 命令示例
```bash
# 查看可用字典
ls /usr/share/wordlists/

# 使用 rockyou 字典
ls /usr/share/wordlists/rockyou.txt

# 解压 rockyou 字典
gunzip /usr/share/wordlists/rockyou.txt.gz

# 查看字典大小
wc -l /usr/share/wordlists/rockyou.txt

# dirb 字典
ls /usr/share/wordlists/dirb/

# SecLists 字典
ls /usr/share/seclists/
```

## 使用场景
选择合适的密码字典进行暴力破解

## 所属分类
- [密码字典生成 (Password Profiling & Wordlists)](../categories/09-password-profiling.md)
