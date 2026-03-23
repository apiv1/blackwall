# dmitry

## 简介
深度信息收集工具，整合 WHOIS、子域名、邮箱、端口扫描

## 核心参数
- `-w`: WHOIS 查询
- `-i`: IP WHOIS 查询
- `-n`: 子域名搜索
- `-e`: 邮箱搜索
- `-p`: 端口扫描

## 命令示例
```bash
# 全功能扫描
dmitry -winsepo target.com

# WHOIS 查询
dmitry -w target.com

# 子域名搜索
dmitry -n target.com

# 邮箱搜索
dmitry -e target.com

# 端口扫描
dmitry -p target.com

# 输出到文件
dmitry -o output.txt -winsepo target.com
```

## 使用场景
快速获取目标的公开信息，适合侦察阶段的一键式信息收集

## 所属分类
- [网络信息收集 (Network Information Gathering)](../categories/01-network-information.md)
