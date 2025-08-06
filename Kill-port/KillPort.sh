#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide a port number."
  echo "Usage: ./kill-port.sh <port_number>"
  exit 1
fi

PORT=$1
PID=$(lsof -t -i :$PORT)

if [ -z "$PID" ]; then
  echo "No process is using port $PORT."
else
  echo "Killing process $PID using port $PORT..."
  kill -9 $PID
  echo "Port $PORT is now free."
fi
