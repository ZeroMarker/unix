#!/bin/bash
# ====================================================
#  Rclone PikPak 挂载脚本（优化版）
#  功能：自动刷新目录、流畅播放、安全缓存
#  适用场景：日常观影、文件管理、自动同步
# ====================================================

# 挂载源和目标
REMOTE="pik:"                # PikPak 远程名称（请确保已配置）
MOUNT_POINT="$HOME/pik"      # 本地挂载目录

# 创建挂载点（如果不存在）
mkdir -p "$MOUNT_POINT"

# 构建 rclone 参数数组（每行一个参数，末尾带注释）
OPTS=(
    # ---------- 缓存模式 ----------
    --vfs-cache-mode full               # 全缓存模式：本地缓存完整文件，读性能最佳
    --vfs-cache-max-size 10G            # 缓存目录最大占用 10GB，防止磁盘爆满
    --vfs-cache-max-age 48h             # 缓存文件最长保留 48 小时，自动清理旧块

    # ---------- 读取优化 ----------
    --vfs-read-chunk-size 32M           # 每次请求的块大小（32MB），平衡首帧延迟
    --vfs-read-chunk-size-limit 1G      # 单次顺序预读上限 1GB，防止拖动进度条时无限下载
    --vfs-read-ahead 256M               # 预读缓冲区 256MB，提升连续播放流畅度
    --buffer-size 128M                  # 内存传输缓冲区 128MB，加速大文件拷贝

    # ---------- 目录刷新（核心） ----------
    --dir-cache-time 5m                 # 目录列表缓存 5 分钟，自动过期后重新拉取
    --poll-interval 30s                 # 每 30 秒轮询远端变更，配合缓存时间实现自动刷新
    --attr-timeout 1s                   # 文件属性（大小/修改时间）缓存仅 1 秒，`ls` 能立即看到最新信息

    # ---------- 权限与后台 ----------
    --allow-other                       # 允许系统其他用户（如 SMB/Docker）访问挂载点
    --umask 000                         # 挂载目录权限为 777，读写无限制
    --daemon                            # 后台守护进程运行

    # ---------- 日志 ----------
    --log-file "$HOME/rclone_pikpak.log"   # 日志保存路径
    --log-level INFO                    # 日志等级（INFO/WARNING/ERROR/DEBUG）
)

# 执行挂载命令（注意：数组展开时每个元素视为独立参数）
rclone mount "$REMOTE" "$MOUNT_POINT" "${OPTS[@]}"

# 检查挂载是否成功
if [ $? -eq 0 ]; then
    echo "✅ PikPak 已成功挂载到 $MOUNT_POINT"
    echo "📁 目录缓存时间为 5 分钟，文件变动将在 5 分钟内自动显示"
    echo "🔍 查看实时日志：tail -f $HOME/rclone_pikpak.log"
else
    echo "❌ 挂载失败，请检查日志：$HOME/rclone_pikpak.log"
fi
