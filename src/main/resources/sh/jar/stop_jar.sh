#!/bin/bash

# 查找包含 ajbpapp-server.jar 的进程ID (PID)
PID=$(ps -ef | grep ${1} | grep -v grep | awk '{print $2}')

# 检查是否找到进程
if [ -n "$PID" ]; then
  echo "找到进程: $PID，准备杀死..."
  
  # 杀死对应进程
  kill -9 $PID

  # 检查进程是否成功终止
  if [ $? -eq 0 ]; then
    echo "进程 $PID 已成功杀死。"
  else
    echo "无法杀死进程 $PID，请检查权限。"
  fi
else
  echo "未找到包含 ${1} 的进程。"
fi

