#!/bin/bash

echo "Analyzing file sizes in KB:"
find . -type f -regex ".*\.\(js\|css\|html\)" -exec du -k {} + | sort -nr | head -n 10
