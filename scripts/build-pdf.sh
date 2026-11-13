#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
out="$root/dist"
mkdir -p "$out"

shopt -s nullglob
files=("$root"/docs/*.md)
if [ ${#files[@]} -eq 0 ]; then
  echo "Aucun markdown dans docs/" >&2
  exit 1
fi

for src in "${files[@]}"; do
  base="$(basename "$src")"
  case "$base" in
    _*) continue ;;
  esac
  pandoc "$src" \
    --defaults="$root/template/defaults.yaml" \
    --resource-path="$root:$root/docs" \
    -V "fontdir=${root}/fonts/" \
    -o "$out/${base%.md}.pdf"
  echo "dist/${base%.md}.pdf"
done
