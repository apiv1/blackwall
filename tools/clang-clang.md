# clang-clang

## 简介
C/C++ 编译器，用于编译 exploit 代码

## 核心参数
- `-o`: 输出文件
- `-O`: 优化级别

## 命令示例
```bash
# 编译 C 程序
clang program.c -o program

# 编译 C++ 程序
clang++ program.cpp -o program

# 优化编译
clang -O2 program.c -o program

# 编译 exploit
clang exploit.c -o exploit
```

## 使用场景
编译 exploit 和工具代码

## 所属分类
- [资源开发 (Resource Development)](../categories/26-resource-development.md)
