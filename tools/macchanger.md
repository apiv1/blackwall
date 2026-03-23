# macchanger

## 简介
MAC 地址修改工具

## 核心参数
- `-r`: 随机 MAC 地址
- `-a`: 随机同厂商 MAC
- `-m`: 指定 MAC 地址

## 命令示例
```bash
# 显示当前 MAC 地址
macchanger -s eth0

# 随机 MAC 地址
macchanger -r eth0

# 随机同厂商 MAC
macchanger -a eth0

# 指定 MAC 地址
macchanger -m 00:11:22:33:44:55 eth0

# 恢复原始 MAC
macchanger -p eth0

# 列出厂商
macchanger -l
```

## 使用场景
隐藏真实 MAC 地址或绕过 MAC 过滤

## 所属分类
- [防御规避 (Defense Evasion)](../categories/27-defense-evasion.md)
