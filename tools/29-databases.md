# 数据库工具 (Databases)

## impacket-mssqlclient
- **能干什么**: 连接和操作 Microsoft SQL Server
- **核心参数**:
  - `domain/user:password@target`: 连接字符串
  - `-windows-auth`: 使用 Windows 认证
- **实战直觉**: 获取 MSSQL 凭据后，执行 SQL 命令或启用 xp_cmdshell

## mysql
- **能干什么**: MySQL 命令行客户端
- **核心参数**:
  - `-h`: 主机
  - `-u`: 用户名
  - `-p`: 密码
- **实战直觉**: 连接 MySQL 数据库，提取数据或执行命令

## mysql
- **能干什么**: MySQL 命令行客户端
- **核心参数**:
  - `-h`: 主机
  - `-u`: 用户名
  - `-p`: 密码
  - `-e`: 执行 SQL 命令
- **实战直觉**: 连接 MySQL 数据库，执行 SQL 注入后的数据提取

## impacket-mssqlclient
- **能干什么**: MSSQL 客户端，支持 Windows 认证
- **核心参数**:
  - `domain/user:password@host`: 连接字符串
  - `-windows-auth`: Windows 认证
- **实战直觉**: 连接 MSSQL 数据库，利用 xp_cmdshell 执行系统命令
