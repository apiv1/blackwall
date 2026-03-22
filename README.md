# Blackwall - Kali Linux 渗透测试知识库

> 从工具枚举到攻击状态机的完整渗透测试方法论

## 📊 项目概览

这是一个系统化的 Kali Linux 渗透测试知识库，通过"自下而上"的方式构建了从工具到决策的完整逻辑链。

### 🎯 核心特点

- **人话描述**：所有工具和技术都用"人话"而非技术文档语言描述
- **实战导向**：每个工具都包含简介、核心参数、命令示例、使用场景
- **决策驱动**：状态机提供 If-Then-Else 决策逻辑
- **场景丰富**：真实 HTB 靶机场景案例
- **可视化**：Mermaid 流程图展示攻击决策路径

## 🚀 快速导航

### 核心文档
- **[工具索引](tools/)** - 所有工具按字母顺序排列
- **[分类索引](categories/)** - 按攻击链分类
- **[状态机总览](state-machines/)** - 攻击状态机详解

### 常用状态机
- [网络服务枚举](state-machines/01-network-service-enumeration.md) - 从这里开始
- [Web 应用攻击](state-machines/03-web-application-attack.md) - Web 渗透必读
- [权限提升](state-machines/05-privilege-escalation.md) - 提权技术大全
- [后渗透和持久化](state-machines/11-post-exploitation-persistence.md) - 获得 shell 后必读

## 🎓 使用指南

### 场景 1：我发现了某个端口，不知道用什么工具
1. 查看 [网络服务枚举状态机](state-machines/01-network-service-enumeration.md)
2. 找到对应端口的决策分支
3. 跟随状态机指引执行攻击

### 场景 2：我想学习某个攻击技术
1. 查看 [状态机总览](state-machines/) 找到对应技术
2. 学习决策逻辑和 HTB 案例
3. 查看 [分类索引](categories/) 了解具体工具用法

### 场景 3：我需要查找某个工具
1. 查看 [工具索引](tools/) 按字母顺序查找
2. 或查看 [分类索引](categories/) 按攻击阶段查找
