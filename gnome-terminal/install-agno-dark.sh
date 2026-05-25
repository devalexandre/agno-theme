#!/usr/bin/env bash
set -euo pipefail

profile_id="${AGNO_GNOME_PROFILE_ID:-f2c6d02b-8572-4e2b-986b-2e76a0dff1b5}"
profile_base="/org/gnome/terminal/legacy/profiles:"
profile_path="${profile_base}/:${profile_id}/"

if ! command -v dconf >/dev/null 2>&1; then
  printf 'dconf is required to install this GNOME Terminal profile.\n' >&2
  exit 1
fi

dconf write "${profile_path}visible-name" "'Agno Dark'"
dconf write "${profile_path}use-theme-colors" "false"
dconf write "${profile_path}background-color" "'rgb(9,9,11)'"
dconf write "${profile_path}foreground-color" "'rgb(217,217,217)'"
dconf write "${profile_path}bold-color-same-as-fg" "true"
dconf write "${profile_path}cursor-colors-set" "true"
dconf write "${profile_path}cursor-background-color" "'rgb(255,64,23)'"
dconf write "${profile_path}cursor-foreground-color" "'rgb(9,9,11)'"
dconf write "${profile_path}highlight-colors-set" "true"
dconf write "${profile_path}highlight-background-color" "'rgb(255,116,72)'"
dconf write "${profile_path}highlight-foreground-color" "'rgb(255,255,255)'"
dconf write "${profile_path}palette" "['rgb(9,9,11)', 'rgb(239,68,68)', 'rgb(16,185,129)', 'rgb(251,191,36)', 'rgb(59,130,246)', 'rgb(234,56,76)', 'rgb(96,165,250)', 'rgb(217,217,217)', 'rgb(100,100,100)', 'rgb(248,113,113)', 'rgb(52,211,153)', 'rgb(252,211,77)', 'rgb(96,165,250)', 'rgb(255,72,72)', 'rgb(0,130,243)', 'rgb(255,255,255)']"

profiles="$(dconf read "${profile_base}/list" || true)"

if [[ -z "$profiles" || "$profiles" == "@as []" ]]; then
  dconf write "${profile_base}/list" "['${profile_id}']"
elif [[ "$profiles" != *"$profile_id"* ]]; then
  profiles="${profiles%]}"
  dconf write "${profile_base}/list" "${profiles}, '${profile_id}']"
fi

if [[ "${1:-}" == "--default" ]]; then
  dconf write "${profile_base}/default" "'${profile_id}'"
fi

printf 'Installed GNOME Terminal profile: Agno Dark\n'
