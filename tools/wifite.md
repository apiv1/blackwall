# wifite

## 简介
自动化 WiFi 攻击工具

## 核心参数
- `-i`: 指定网卡
- `--wpa`: 只攻击 WPA
- `--wep`: 只攻击 WEP

## 命令示例
```bash
# 自动攻击所有网络
wifite

# 指定网卡
wifite -i wlan0

# 只攻击 WPA 网络
wifite --wpa

# 只攻击 WEP 网络
wifite --wep

# 使用字典
wifite --dict /usr/share/wordlists/rockyou.txt

# 攻击特定 BSSID
wifite -b 00:11:22:33:44:55

# 设置超时时间
wifite --timeout 60
```

## 使用场景
自动化 WiFi 渗透测试

## 所属分类
- [WiFi 攻击 (WiFi Attacks)](../categories/24-wifi-attacks.md)
