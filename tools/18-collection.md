# 数据收集 (Collection)

## mitmproxy
- **能干什么**: 交互式 HTTPS 代理，用于拦截和修改 HTTP/HTTPS 流量
- **核心参数**:
  - `mitmproxy`: 交互式界面
  - `mitmweb`: Web 界面
  - `mitmdump`: 命令行模式
- **实战直觉**: 分析和修改 HTTPS 流量，测试 API 安全性

## ssldump
- **能干什么**: SSL/TLS 流量分析工具
- **核心参数**:
  - `-i`: 网络接口
  - `-k`: 私钥文件（解密流量）
- **实战直觉**: 分析 SSL/TLS 握手过程，调试加密连接

## sslsplit
- **能干什么**: SSL/TLS 中间人攻击工具
- **核心参数**:
  - `-D`: 调试模式
  - `-l`: 日志目录
- **实战直觉**: 拦截和解密 SSL/TLS 流量
