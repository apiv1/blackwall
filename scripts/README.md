# Kali 工具安装脚本

这个目录包含了各种 Kali 渗透测试工具的安装脚本，按不同维度组织。

## 📁 目录结构

```
scripts/
├── README.md                    # 本文档
├── install-all.sh              # 安装所有工具（完整 Kali 工具集）
├── install-missing.sh          # 安装当前系统缺失的工具
├── categories/                 # 按攻击链分类的安装脚本
│   ├── 01-network-information.sh
│   ├── 02-dns-enumeration.sh
│   ├── 03-network-service-discovery.sh
│   ├── 04-web-scanning.sh
│   ├── 05-web-vulnerability-scanning.sh
│   └── ...
└── scenarios/                  # 按攻击场景的安装脚本
    ├── 01-network-service-enumeration.sh
    ├── 02-smb-enumeration-attack.sh
    ├── 03-web-application-attack.sh
    ├── 04-active-directory-attack.sh
    ├── 05-privilege-escalation.sh
    └── ...
```

## 🚀 快速开始

### 安装所有工具
```bash
sudo ./install-all.sh
```

### 安装缺失的工具
```bash
sudo ./install-missing.sh
```

### 按分类安装
```bash
# 安装 Web 扫描相关工具
sudo ./categories/04-web-scanning.sh

# 安装密码破解相关工具
sudo ./categories/08-password-cracking.sh
```

### 按攻击场景安装
```bash
# 安装 Web 应用攻击所需的所有工具
sudo ./scenarios/web-application-attack.sh

# 安装权限提升所需的所有工具
sudo ./scenarios/privilege-escalation.sh
```

## 📋 使用场景

### 场景 1：新安装的 Kali 系统
如果你刚安装了 Kali，想要补全所有工具：
```bash
sudo ./install-all.sh
```

### 场景 2：只做 Web 渗透测试
如果你只需要 Web 相关的工具：
```bash
sudo ./categories/04-web-scanning.sh
sudo ./categories/05-web-vulnerability-scanning.sh
sudo ./scenarios/web-application-attack.sh
```

### 场景 3：准备打 HTB 靶机
根据靶机类型安装对应的工具：
```bash
# Windows 靶机
sudo ./scenarios/smb-enumeration-attack.sh
sudo ./scenarios/active-directory-attack.sh
sudo ./scenarios/privilege-escalation.sh

# Linux 靶机
sudo ./scenarios/network-service-enumeration.sh
sudo ./scenarios/privilege-escalation.sh
```

### 场景 4：精简系统补充工具
如果你的系统缺少某些工具：
```bash
sudo ./install-missing.sh
```

## 🔧 脚本说明

### install-all.sh
- 安装所有工具文档中提到的工具
- 适合完整的 Kali 环境搭建
- 安装时间较长（取决于网络速度）

### install-missing.sh
- 只安装当前系统缺失的工具
- 自动检测已安装的工具，避免重复安装
- 适合快速补充缺失的工具

### categories/
- 按攻击链分类组织
- 每个脚本安装该分类下的所有工具
- 适合按需安装特定类型的工具

### scenarios/
- 按攻击场景组织
- 每个脚本安装该场景所需的所有工具
- 适合按实战场景安装工具

## ⚠️ 注意事项

1. **需要 root 权限**：所有安装脚本都需要 sudo 运行
2. **网络连接**：安装过程需要稳定的网络连接
3. **磁盘空间**：确保有足够的磁盘空间（建议至少 10GB）
4. **系统更新**：建议先运行 `sudo apt update`
5. **备份重要数据**：安装前建议备份重要配置文件

## 📝 维护说明

- 所有脚本都是自动生成的，基于 `tools/` 和 `categories/` 目录
- 如果添加了新工具，需要重新生成安装脚本
- 脚本会自动跳过已安装的工具，可以安全地重复运行

## 🔗 相关文档

- [工具索引](../tools/README.md)
- [分类索引](../categories/README.md)
- [状态机总览](../state-machines/README.md)
