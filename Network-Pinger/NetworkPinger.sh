#!/bin/bash

HOST=$1

if [ -z "$HOST" ]; then
  echo "Usage: $0 <host>"
  exit 1
fi

echo "Pinging $HOST. Press Ctrl+C to stop."
ping "$HOST" | while read line; do
  echo "$(date): $line"
done
