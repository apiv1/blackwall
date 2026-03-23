# clang

## 简介
C++ 语言编译器

## 核心参数
- `-o`: 输出文件
- `-O`: 优化级别
- `-g`: 调试信息

## 命令示例
```bash
# 编译 C 程序
clang program.c -o program

# 编译 C++ 程序
clang++ program.cpp -o program

# 优化编译
clang -O2 program.c -o program

# 包含调试信息
clang -g program.c -o program

# 编译 exploit
clang exploit.c -o exploit

# 交叉编译
clang --target=x86_64-linux-gnu program.c -o program
```

## 使用场景
编译 C/C++ exploit 代码

## 所属分类
- [资源开发 (Resource Development)](../categories/26-resource-development.md)
