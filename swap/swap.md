# Swap 配置说明

## 概述

Swap（交换空间）是磁盘上的一块区域，当物理内存（RAM）不足时，系统会将部分内存数据转移到 Swap 中，防止因内存耗尽导致系统崩溃或 OOM Killer 杀死进程。

## 当前配置

- **Swap 大小**: 2GB
- **类型**: 文件形式（/swapfile）
- **Swappiness**: 10（仅在内存紧张时使用）

## 配置时间

2026-06-19，因服务器 OOM 导致崩溃后配置。

## 配置命令

创建 2GB Swap 文件:
  sudo fallocate -l 2G /swapfile
  sudo chmod 600 /swapfile
  sudo mkswap /swapfile
  sudo swapon /swapfile

持久化（写入 fstab）:
  echo \ /swapfile none swap sw 0 0\ | sudo tee -a /etc/fstab

设置 swappiness:
  echo \vm.swappiness=10\ | sudo tee -a /etc/sysctl.conf
  sudo sysctl -p

## 常用命令

查看 Swap 状态:
  sudo swapon --show
  free -h

临时关闭 Swap:
  sudo swapoff /swapfile

重新启用:
  sudo swapon /swapfile

查看 Swap 使用详情:
  cat /proc/swaps

## Swappiness 说明

| 值 | 含义 |
|------|------|
| 0 | 尽量不使用 Swap |
| 10 | 内存紧张时使用（当前配置） |
| 60 | 默认值，平衡使用 |
| 100 | 积极使用 Swap |

## 注意事项

- Swap 文件位于 /swapfile，权限 600
- 已添加到 /etc/fstab，重启后自动启用
- 建议物理内存不足时考虑升级 ECS 规格
