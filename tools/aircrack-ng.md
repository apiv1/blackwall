# aircrack-ng

## 简介
WiFi 安全审计工具套件，破解 WEP/WPA/WPA2

## 核心参数
- `-w`: 字典文件
- `-b`: 目标 BSSID
- `-e`: 目标 ESSID

## 命令示例
```bash
# 破解 WPA/WPA2（需要先捕获握手包）
aircrack-ng -w /usr/share/wordlists/rockyou.txt -b 00:11:22:33:44:55 capture.cap

# 破解 WEP
aircrack-ng -b 00:11:22:33:44:55 capture*.cap

# 指定 ESSID
aircrack-ng -w wordlist.txt -e "WiFi_Name" capture.cap

# 使用多个 CPU 核心
aircrack-ng -w wordlist.txt capture.cap -p 4

# 显示详细信息
aircrack-ng -w wordlist.txt capture.cap -l cracked.txt
```

## 使用场景
WiFi 密码破解和安全审计

## 所属分类
- [WiFi 攻击 (WiFi Attacks)](../categories/24-wifi-attacks.md)
