#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
target_dir="${XDG_CONFIG_HOME:-$HOME/.config}/xfce4/terminal"
target_file="${target_dir}/terminalrc"
backup_file="${target_file}.backup-$(date +%Y%m%d%H%M%S)"
tmp_file="$(mktemp)"

cleanup() {
  rm -f "$tmp_file"
}

trap cleanup EXIT

mkdir -p "$target_dir"

if [[ -f "$target_file" ]]; then
  cp "$target_file" "$backup_file"
  printf 'Backup created: %s\n' "$backup_file"
else
  printf '[Configuration]\n' >"$target_file"
fi

awk '
  /^ColorForeground=/ { next }
  /^ColorBackground=/ { next }
  /^ColorCursor=/ { next }
  /^ColorBold=/ { next }
  /^ColorBoldUseDefault=/ { next }
  /^ColorPalette=/ { next }
  /^ColorSelection=/ { next }
  /^ColorSelectionUseDefault=/ { next }
  /^TabActivityColor=/ { next }
  { print }
' "$target_file" >"$tmp_file"

awk '
  NR > 1 { print }
' "${script_dir}/terminalrc" >>"$tmp_file"

cp "$tmp_file" "$target_file"
printf 'Installed XFCE Terminal theme: Agno Dark\n'
