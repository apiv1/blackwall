# spooftooph

## 简介
蓝牙设备欺骗工具

## 核心参数
- `-i`: 蓝牙接口
- `-n`: 伪造设备名

## 命令示例
```bash
# 蓝牙 MAC 欺骗
spooftooph -i hci0 -a 00:11:22:33:44:55

# 随机 MAC
spooftooph -i hci0 -r
```

## 使用场景
伪造蓝牙设备，进行蓝牙攻击

## 所属分类
- [系统工具与配置 (System Tools)](../categories/33-system-tools.md)
