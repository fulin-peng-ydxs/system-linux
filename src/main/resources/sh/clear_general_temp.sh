#!/bin/bash

# 删除 /tmp 目录下超过 7 天的文件
find /tmp -type f -mtime +7 -exec rm -f {} \;

# 删除 /var/log 目录下超过 30 天的日志文件
find /var/log -type f -name "*.log" -mtime +30 -exec rm -f {} \;

echo "清理完成:《clear_general_temp.sh》- $(date)" >> /var/log/clean_temp.log