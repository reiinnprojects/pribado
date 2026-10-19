#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
SRC="$ROOT/skills/pribado"
DEST="${HOME}/.cursor/skills/pribado"

if [[ ! -f "$SRC/SKILL.md" ]]; then
  echo "missing SKILL.md" >&2
  exit 1
fi

mkdir -p "$(dirname "$DEST")"
rm -rf "$DEST"
cp -R "$SRC" "$DEST"
echo "installed pribado -> $DEST"
