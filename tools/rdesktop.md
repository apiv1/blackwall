# rdesktop

## 简介
Linux 下的 RDP 客户端

## 核心参数
- 直接跟目标 IP
- `-u`: 用户名
- `-p`: 密码
- `-g`: 分辨率

## 命令示例
```bash
# 基本连接
rdesktop 192.168.1.100

# 使用凭据连接
rdesktop -u admin -p password 192.168.1.100

# 指定分辨率
rdesktop -g 1920x1080 192.168.1.100

# 全屏模式
rdesktop -f 192.168.1.100

# 指定域
rdesktop -d DOMAIN -u admin -p password 192.168.1.100

# 共享本地目录
rdesktop -r disk:share=/local/path 192.168.1.100
```

## 使用场景
从 Linux 连接到 Windows RDP 服务

## 所属分类
- [横向移动 (Lateral Movement)](../categories/16-lateral-movement.md)
