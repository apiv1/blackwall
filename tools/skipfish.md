# skipfish

## 简介
主动式 Web 应用安全侦察工具，生成交互式站点地图

## 核心参数
- `-o`: 输出目录
- `-W`: 指定字典

## 命令示例
```bash
# 基本扫描
skipfish -o output_dir http://target.com

# 使用字典
skipfish -W /usr/share/skipfish/dictionaries/complete.wl -o output_dir http://target.com

# 使用认证
skipfish -A user:password -o output_dir http://target.com

# 限制扫描深度
skipfish -d 3 -o output_dir http://target.com
```

## 使用场景
深度爬取和分析 Web 应用结构，生成详细的安全报告

## 所属分类
- [Web 漏洞扫描 (Web Vulnerability Scanning)](../categories/05-web-vulnerability-scanning.md)
