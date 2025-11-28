#!/bin/bash

set -euo pipefail

PRESENTATION_MD="presentation/presentation.md"

if [ ! -f "$PRESENTATION_MD" ]; then
  echo "Error: $PRESENTATION_MD not found. Create it first and re-run this script." >&2
  exit 1
fi

echo "Using existing $PRESENTATION_MD"

if command -v npx >/dev/null 2>&1; then
  echo "Found npx — attempting to build PDF with @marp-team/marp-cli (this may install packages)."
  npx --yes @marp-team/marp-cli "$PRESENTATION_MD" --pdf --allow-local-files
  echo "PDF build attempted (check output above for success)."
else
  echo "npx not found — presentation markdown left intact. Install @marp-team/marp-cli to export PDF."
fi
