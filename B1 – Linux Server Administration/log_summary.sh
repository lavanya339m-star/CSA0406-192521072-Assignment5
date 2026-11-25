#!/usr/bin/env bash
set -euo pipefail

LOG_FILE="${1:-}"
if [[ -z "$LOG_FILE" || ! -f "$LOG_FILE" ]]; then
  echo "Usage: $0 <access-log-file>" >&2
  exit 1
fi

echo "Requests per status code:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | awk '{printf "  %s %s\n", $2, $1}'

echo "Busiest client:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -1 | awk '{printf "  %s %s\n", $2, $1}'

echo "Total bytes sent:"
awk '{sum += $10} END {printf "  %.0f\n", sum}' "$LOG_FILE"
