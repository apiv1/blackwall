# OS 凭据转储 (OS Credential Dumping)

## samdump2
- **能干什么**: 从 Windows SAM 文件中提取密码哈希
- **核心参数**:
  - `SYSTEM SAM`: 指定 SYSTEM 和 SAM 文件路径
- **实战直觉**: 当你获取到 Windows 的 SAM 和 SYSTEM 文件时，提取用户哈希

## chntpw
- **能干什么**: 离线修改 Windows 密码和 SAM 数据库
- **核心参数**:
  - `-l`: 列出用户
  - `-u`: 指定用户名
- **实战直觉**: 当你有物理访问权限时，直接重置 Windows 密码

## creddump7
- **能干什么**: 从 Windows 注册表文件中提取凭据
- **核心参数**: 包含多个脚本（pwdump、lsadump 等）
- **实战直觉**: 提取 Windows 凭据的 Python 工具集
