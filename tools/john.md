# john

## 简介
经典的密码破解工具（John the Ripper），支持多种哈希格式

## 核心参数
- `--wordlist=`: 指定字典文件
- `--format=`: 指定哈希格式
- `--show`: 显示已破解的密码
- `--rules`: 使用规则变换

## 命令示例
```bash
# 基本破解
john hash.txt

# 使用字典
john --wordlist=/usr/share/wordlists/rockyou.txt hash.txt

# 显示已破解的密码
john --show hash.txt

# 破解 ZIP 文件密码
zip2john file.zip > hash.txt && john hash.txt

# 破解 SSH 私钥密码
ssh2john id_rsa > hash.txt && john hash.txt
```

## 使用场景
当你没有 GPU 或需要破解特殊格式时，john 是可靠的选择

## 所属分类
- [密码破解 (Password Cracking)](../categories/08-password-cracking.md)
