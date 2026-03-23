# wash

## 简介
扫描支持 WPS 的 WiFi 网络

## 核心参数
- `-i`: 监控模式接口

## 命令示例
```bash
# 扫描 WPS 网络
wash -i wlan0mon

# 显示所有网络
wash -i wlan0mon -a

# 详细输出
wash -i wlan0mon -v
```

## 使用场景
快速识别哪些路由器开启了 WPS，可作为攻击目标

## 所属分类
- [WiFi 攻击 (WiFi Attacks)](../categories/24-wifi-attacks.md)
