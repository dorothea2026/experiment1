#!/bin/bash
set -e
echo "Running CI checks..."
ruff check .
pytest
