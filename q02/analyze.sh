#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <csv_file>" >&2
    exit 1
fi

CSV_FILE="$1"

if [ ! -f "$CSV_FILE" ]; then
    echo "Error: File '$CSV_FILE' not found" >&2
    exit 1
fi

echo "=== Top 2 paths with 5xx errors ==="
awk -F',' 'NR>1 && $4 ~ /^5[0-9][0-9]$/ {count[$3]++} END {for(p in count) print count[p], p}' "$CSV_FILE" | sort -k1,1nr -k2,2d | head -2

echo ""
echo "=== Average latency_ms ==="
awk -F',' 'NR>1 {sum += $5; count++} END {printf "%.2f\n", sum/count}' "$CSV_FILE"
