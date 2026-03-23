# theHarvester

## 简介
从搜索引擎和公开数据源收集邮箱、子域名、主机信息

## 核心参数
- `-d`: 指定目标域名
- `-b`: 指定数据源
- `-l`: 限制搜索结果数量

## 命令示例
```bash
# 使用 Google 搜索
theHarvester -d target.com -b google

# 使用多个数据源
theHarvester -d target.com -b google,bing,linkedin

# 限制结果数量
theHarvester -d target.com -b google -l 500

# 使用所有数据源
theHarvester -d target.com -b all

# 输出到文件
theHarvester -d target.com -b google -f output

# 使用 Shodan
theHarvester -d target.com -b shodan
```

## 使用场景
社工前的情报收集，当你需要找到目标公司的员工邮箱列表时的首选

## 所属分类
- [网络信息收集 (Network Information Gathering)](../categories/01-network-information.md)
