#!/bin/bash

# 清理 /var/tmp 中未被修改超过 48 小时的文件
/usr/sbin/tmpwatch -m 48 /var/tmp

echo "清理完成:《clear_general_temp_tmpwatch.sh》- $(date)" >> /var/log/clean_temp.log