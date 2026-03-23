# proxychains4

## 简介
通过代理链运行程序

## 核心参数
- 配置文件：/etc/proxychains4.conf
- 在命令前加 proxychains4

## 命令示例
```bash
# 编辑配置文件
nano /etc/proxychains4.conf
# 添加代理：socks5 127.0.0.1 1080

# 通过代理运行 nmap
proxychains4 nmap 192.168.1.100

# 通过代理运行 curl
proxychains4 curl http://target.com

# 通过代理运行 ssh
proxychains4 ssh user@192.168.1.100

# 静默模式
proxychains4 -q nmap 192.168.1.100

# 使用自定义配置文件
proxychains4 -f custom.conf nmap 192.168.1.100
```

## 使用场景
通过代理链隐藏真实 IP 或访问内网

## 所属分类
- [协议隧道 (Protocol Tunneling)](../categories/22-protocol-tunneling.md)
