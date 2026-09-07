#!/bin/bash
echo "# Package Report" > summary.md
echo "" >> summary.md
echo "| name | version | downloads |" >> summary.md
echo "|---|---|---:|" >> summary.md
curl -fsS http://127.0.0.1:8000/packages.json | jq -r '
  .[] | select(.status == "active" and .downloads >= 100) | "| \(.name) | \(.version) | \(.downloads) |"
' | sort -t'|' -k4 -rn >> summary.md
