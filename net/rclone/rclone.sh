rclone config

rclone lsf 'pik:My TikTok'

rclone copy this.mp4 'pik:My TikTok' --progress



rclone copy /path/to/bigvideo.mp4 pik:My\ TikTok \
  --progress \
  --transfers 4 \             # 同时传 4 个文件（调高到 6-8 如果服务器带宽好）
  --multi-thread-streams 4 \  # 每个文件用 4 线程分片
  --pikpak-chunk-size 100M    # 分片大小 100MB（默认 5MiB，太小慢）
