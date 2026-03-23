# recon-ng

## 简介
模块化的 Web 侦察框架，类似 Metasploit 的侦察版

## 核心参数
- `marketplace install`: 安装模块
- `modules load`: 加载模块
- `run`: 执行模块

## 命令示例
```bash
# 启动 Recon-ng
recon-ng

# 在 recon-ng 中：
# marketplace search - 搜索模块
# marketplace install all - 安装所有模块
# modules load recon/domains-hosts/google_site_web - 加载模块
# options set SOURCE target.com - 设置目标
# run - 运行模块
```

## 使用场景
自动化 OSINT 收集，整合多个数据源，适合大规模信息收集

## 所属分类
- [Web 漏洞扫描 (Web Vulnerability Scanning)](../categories/05-web-vulnerability-scanning.md)
