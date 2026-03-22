# 权限提升 (Privilege Escalation)

## linpeas
- **能干什么**: Linux 权限提升自动化枚举脚本
- **核心参数**: 直接运行即可，自动检查所有提权向量
- **实战直觉**: 获取 Linux 低权限 shell 后的第一步，快速发现提权路径

## winpeas
- **能干什么**: Windows 权限提升自动化枚举脚本
- **核心参数**: 直接运行，自动检查 Windows 提权向量
- **实战直觉**: 获取 Windows 低权限 shell 后的必备工具

## peass
- **能干什么**: PEASS 工具套件（包含 linpeas 和 winpeas）
- **核心参数**: 根据系统选择对应版本
- **实战直觉**: 权限提升枚举的标准工具集

## unix-privesc-check
- **能干什么**: Unix/Linux 权限提升检查脚本
- **核心参数**:
  - `standard`: 标准检查
  - `detailed`: 详细检查
- **实战直觉**: 比 linpeas 更轻量，适合受限环境
