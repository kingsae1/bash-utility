#!/bin/bash

# 입력된 포트를 확인
if [ -z "$1" ]; then
  echo "Usage: $0 <port>"
  echo "Please specify the port number to terminate processes."
  exit 1
fi

PORT=$1

# 특정 포트를 사용하는 프로세스의 PID를 가져옵니다.
PIDS=$(sudo lsof -i :$PORT -P -t)

# PID가 존재하면 종료
if [ -n "$PIDS" ]; then
  echo "Killing processes using port $PORT: $PIDS"
  for PID in $PIDS; do
    sudo kill -9 $PID
    echo "Killed process $PID"
  done
else
  echo "No processes found using port $PORT."
fi
