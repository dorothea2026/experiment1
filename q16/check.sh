#!/bin/bash
set -e
ruff format --check src/
ruff check src/
pytest
