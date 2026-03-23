# cewl

## 简介
从网站爬取关键词生成自定义密码字典

## 核心参数
- `-d`: 爬取深度
- `-m`: 最小单词长度
- `-w`: 输出文件

## 命令示例
```bash
# 基本爬取
cewl http://target.com

# 指定爬取深度
cewl -d 3 http://target.com

# 设置最小单词长度
cewl -m 6 http://target.com

# 输出到文件
cewl -w wordlist.txt http://target.com

# 包含邮箱地址
cewl -e http://target.com

# 包含元数据
cewl -a http://target.com

# 详细输出
cewl -v http://target.com
```

## 使用场景
生成针对特定目标的自定义密码字典

## 所属分类
- [密码字典生成 (Password Profiling & Wordlists)](../categories/09-password-profiling.md)
