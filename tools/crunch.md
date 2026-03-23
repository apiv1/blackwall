# crunch

## 简介
根据规则生成密码字典

## 核心参数
- 最小长度 最大长度
- `-t`: 使用模式
- `-o`: 输出文件

## 命令示例
```bash
# 生成 4-6 位数字字典
crunch 4 6 0123456789

# 生成小写字母字典
crunch 6 8 abcdefghijklmnopqrstuvwxyz

# 使用模式（@=小写，,=大写，%=数字，^=符号）
crunch 8 8 -t pass%%%%

# 生成并输出到文件
crunch 6 8 -o wordlist.txt

# 生成特定模式
crunch 10 10 -t 2024@@@@@@

# 使用字符集
crunch 8 8 -f /usr/share/crunch/charset.lst mixalpha
```

## 使用场景
生成符合特定规则的密码字典

## 所属分类
- [密码字典生成 (Password Profiling & Wordlists)](../categories/09-password-profiling.md)
