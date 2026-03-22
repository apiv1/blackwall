# 资源开发 (Resource Development)

## msfvenom
- **能干什么**: Metasploit 的 payload 生成器，创建各种格式的恶意载荷
- **核心参数**:
  - `-p`: 指定 payload
  - `-f`: 输出格式（exe、elf、php 等）
  - `LHOST/LPORT`: 回连地址和端口
- **实战直觉**: 生成反向 shell、木马、shellcode 的标准工具

## searchsploit
- **能干什么**: 离线搜索 Exploit-DB 数据库
- **核心参数**:
  - 直接跟关键词搜索
  - `-m`: 复制 exploit 到当前目录
  - `-x`: 查看 exploit 内容
- **实战直觉**: 快速查找已知漏洞的 exploit 代码

## radare2
- **能干什么**: 强大的逆向工程框架，支持反汇编、调试、分析
- **核心参数**:
  - `r2 <file>`: 打开文件
  - `aaa`: 自动分析
  - `pdf`: 反汇编函数
- **实战直觉**: 深度分析二进制文件，逆向恶意软件或破解程序

## pyinstaller
- **能干什么**: 将 Python 脚本打包成独立可执行文件
- **核心参数**:
  - `--onefile`: 打包成单个文件
  - `--noconsole`: 无控制台窗口
- **实战直觉**: 将 Python 工具打包成 exe，方便在目标系统上运行

## clang/clang++
- **能干什么**: C/C++ 编译器，用于编译 exploit 代码
- **核心参数**:
  - `-o`: 指定输出文件
  - `-m32/-m64`: 编译 32/64 位程序
- **实战直觉**: 编译 C 语言的 exploit 或提权工具

## msf-nasm_shell
- **能干什么**: Metasploit 的汇编/反汇编交互式 shell
- **核心参数**: 交互式输入汇编指令
- **实战直觉**: 快速生成 shellcode 或转换汇编指令

## msfpc
- **能干什么**: MSF Payload Creator，快速生成各种 payload
- **核心参数**:
  - 指定 payload 类型和参数
- **实战直觉**: 比 msfvenom 更简单的 payload 生成工具

## generic_* (shellcode 生成器)
- **能干什么**: Metasploit 的通用 shellcode 生成工具
- **核心参数**:
  - `generic_send_tcp`: 生成 TCP 发送 shellcode
  - `generic_listen_tcp`: 生成 TCP 监听 shellcode
  - `generic_send_udp`: 生成 UDP 发送 shellcode
  - `generic_chunked`: 生成分块传输 shellcode
- **实战直觉**: 生成特定功能的原始 shellcode，用于漏洞利用开发

## generic_send_tcp
- **能干什么**: 生成 TCP 发送 shellcode
- **核心参数**: 指定目标 IP 和端口
- **实战直觉**: 创建反向连接的 shellcode

## generic_listen_tcp
- **能干什么**: 生成 TCP 监听 shellcode
- **核心参数**: 指定监听端口
- **实战直觉**: 创建绑定 shell 的 shellcode

## generic_send_udp
- **能干什么**: 生成 UDP 发送 shellcode
- **核心参数**: 指定目标 IP 和端口
- **实战直觉**: 通过 UDP 建立连接的 shellcode

## generic_chunked
- **能干什么**: 生成分块传输 shellcode
- **核心参数**: 指定传输参数
- **实战直觉**: 绕过 IDS/IPS 的分块传输 shellcode

## clang
- **能干什么**: C 语言编译器
- **核心参数**:
  - `-o`: 输出文件名
  - `-O2`: 优化级别
- **实战直觉**: 编译 C 语言 exploit 代码

## clang++
- **能干什么**: C++ 语言编译器
- **核心参数**:
  - `-o`: 输出文件名
  - `-std=c++17`: C++ 标准
- **实战直觉**: 编译 C++ exploit 代码

## powersploit
- **能干什么**: PowerShell 后渗透框架
- **核心参数**: 包含多个 PowerShell 模块
- **实战直觉**: Windows 后渗透的瑞士军刀，包含提权、凭据提取、持久化等模块
