# pyinstaller

## 简介
将 Python 脚本打包成独立可执行文件

## 核心参数
- `--onefile`: 打包成单个文件
- `--noconsole`: 无控制台窗口
- `-n`: 指定输出文件名

## 命令示例
```bash
# 基本打包
pyinstaller script.py

# 打包成单个文件
pyinstaller --onefile script.py

# 无控制台窗口（GUI 程序）
pyinstaller --onefile --noconsole script.py

# 指定输出文件名
pyinstaller --onefile -n myapp script.py

# 添加图标
pyinstaller --onefile --icon=icon.ico script.py

# 隐藏导入
pyinstaller --onefile --hidden-import=module script.py
```

## 使用场景
将 Python exploit 或工具打包成可执行文件

## 所属分类
- [资源开发 (Resource Development)](../categories/26-resource-development.md)
