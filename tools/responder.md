# responder

## 简介
LLMNR/NBT-NS/MDNS 投毒工具，捕获网络凭据

## 核心参数
- `-I`: 指定网络接口
- `-w`: 启动 WPAD 代理
- `-f`: 强制 NTLM 认证

## 命令示例
```bash
# 基本运行
responder -I eth0

# 启用 WPAD 代理
responder -I eth0 -w

# 强制 NTLM 认证
responder -I eth0 -f

# 分析模式（不投毒）
responder -I eth0 -A

# 详细输出
responder -I eth0 -v

# 禁用 HTTP 服务器
responder -I eth0 --disable-http
```

## 使用场景
内网环境中捕获 NTLM 哈希

## 所属分类
- [凭据访问 (Credential Access)](../categories/11-credential-access.md)
