# chntpw

## 简介
离线修改 Windows 密码和 SAM 数据库

## 核心参数
- `-l`: 列出用户
- `-u`: 指定用户
- `-i`: 交互模式

## 命令示例
```bash
# 列出所有用户
chntpw -l SAM

# 清除用户密码
chntpw -u admin SAM

# 交互模式
chntpw -i SAM

# 注册表编辑器模式
chntpw -e SAM

# 详细输出
chntpw -v -u admin SAM
```

## 使用场景
重置 Windows 密码或修改用户权限

## 所属分类
- [OS 凭据转储 (OS Credential Dumping)](../categories/14-os-credential-dumping.md)
