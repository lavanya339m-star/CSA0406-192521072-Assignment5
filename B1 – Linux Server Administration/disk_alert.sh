#!/usr/bin/env bash
set -euo pipefail
THRESHOLD="${1:-80}"
USAGE=$(df -P / | awk 'NR==2 {gsub(/%/,"",$5); print $5}')
if (( USAGE >= THRESHOLD )); then
  echo "WARNING: root filesystem usage is ${USAGE}% (threshold ${THRESHOLD}%)"
else
  echo "OK: root filesystem usage is ${USAGE}%"
fi
