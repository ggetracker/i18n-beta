#!/bin/bash

# This script sorts the keys of translation JSON files
# in the current directory in alphabetical order.
# Usage: ./sort-order.sh file1.json file2.json ...

set -e

for file in "$@"; do
  tmp="$(mktemp)"
  jq -S '.' "$file" > "$tmp" && mv "$tmp" "$file"
done