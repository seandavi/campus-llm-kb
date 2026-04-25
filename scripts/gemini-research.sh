#!/usr/bin/env bash
# gemini-research.sh — invoke Gemini to produce a research dossier for one chapter.
#
# Usage:
#   scripts/gemini-research.sh <chapter-slug> [--model <model>]
#
# Inputs:
#   _research/MASTER_PROMPT.md     shared instructions (always prepended)
#   _research/briefs/<slug>.md     per-chapter brief (required)
#
# Output:
#   _research/dossiers/<slug>.md           the dossier
#   _research/dossiers/<slug>.log          full Gemini stderr/timing
#
# Environment:
#   GEMINI_API_KEY must be set, or the user must be logged in via `gemini`.

set -euo pipefail

usage() {
  echo "usage: $(basename "$0") <chapter-slug> [--model <model>]" >&2
  exit 64
}

[[ $# -lt 1 ]] && usage

slug="$1"; shift
model=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --model) model="$2"; shift 2 ;;
    -h|--help) usage ;;
    *) echo "unknown arg: $1" >&2; usage ;;
  esac
done

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
master="$repo_root/_research/MASTER_PROMPT.md"
brief="$repo_root/_research/briefs/$slug.md"
out_dir="$repo_root/_research/dossiers"
out="$out_dir/$slug.md"
log="$out_dir/$slug.log"

[[ -f "$master" ]] || { echo "missing master prompt: $master" >&2; exit 1; }
[[ -f "$brief"  ]] || { echo "missing brief: $brief" >&2; exit 1; }
mkdir -p "$out_dir"

if [[ -f "$out" ]]; then
  ts="$(date +%Y%m%d-%H%M%S)"
  mv "$out" "$out.$ts.bak"
  echo "existing dossier moved to $out.$ts.bak" >&2
fi

prompt_file="$(mktemp -t gemini-research.XXXXXX)"
trap 'rm -f "$prompt_file"' EXIT
cat "$master" "$brief" > "$prompt_file"

echo "→ running gemini for chapter: $slug" >&2
echo "  prompt size: $(wc -c < "$prompt_file") bytes" >&2
echo "  output:      $out" >&2

start="$(date +%s)"
model_args=()
[[ -n "$model" ]] && model_args=(-m "$model")

# -y auto-accepts tool calls (Gemini's web search etc); -o text returns plain prose.
if gemini "${model_args[@]}" -y -o text -p "$(cat "$prompt_file")" \
     > "$out" 2> "$log"; then
  elapsed=$(( $(date +%s) - start ))
  echo "✓ dossier written ($(wc -l < "$out") lines, ${elapsed}s)" >&2
  echo "  log: $log" >&2
else
  status=$?
  echo "✗ gemini exited $status — see $log" >&2
  exit "$status"
fi
