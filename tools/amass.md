# amass

## 简介
最强大的子域名枚举工具，整合多种数据源和主动探测

## 核心参数
- `enum -d`: 枚举子域名
- `-passive`: 仅使用被动数据源（不触碰目标）
- `-brute`: 启用暴力破解

## 命令示例
```bash
# 基本子域名枚举
amass enum -d target.com

# 被动枚举（不主动探测）
amass enum -passive -d target.com

# 启用暴力破解
amass enum -brute -d target.com

# 使用所有技术枚举
amass enum -active -d target.com

# 输出到文件
amass enum -d target.com -o subdomains.txt

# 使用配置文件
amass enum -d target.com -config config.ini
```

## 使用场景
当你需要完整的攻击面地图时，amass 能发现其他工具遗漏的子域名

## 所属分类
- [网络信息收集 (Network Information Gathering)](../categories/01-network-information.md)
