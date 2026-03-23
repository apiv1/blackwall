# cutycapt

## 简介
网页截图工具，将网页渲染为图片

## 核心参数
- `--url=`: 目标 URL
- `--out=`: 输出文件

## 命令示例
```bash
# 网页截图
cutycapt --url=http://target.com --out=screenshot.png

# 指定分辨率
cutycapt --url=http://target.com --out=screenshot.png --min-width=1920 --min-height=1080

# 延迟截图
cutycapt --url=http://target.com --out=screenshot.png --delay=5000

# 指定用户代理
cutycapt --url=http://target.com --out=screenshot.png --user-agent="Mozilla/5.0"
```

## 使用场景
批量截图 Web 服务，用于报告或快速浏览

## 所属分类
- [报告工具 (Reporting Tools)](../categories/30-reporting-tools.md)
