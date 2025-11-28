#!/bin/bash

cd "$(dirname "$0")/.." || exit 1

cat report/introduction.md > report/report.md
echo "" >> report/report.md
cat report/principles.md >> report/report.md
echo "" >> report/report.md
cat report/frameworks.md >> report/report.md
echo "" >> report/report.md
cat report/testing.md >> report/report.md
echo "" >> report/report.md
cat report/documentation.md >> report/report.md

echo "report/report.md generated"

if command -v npx >/dev/null 2>&1; then
  echo "Generating PDF with md-to-pdf..."
  npx --yes md-to-pdf report/report.md
  echo "report/report.pdf generated (continuous document, not slides)"
else
  echo "npx not found - PDF not generated"
fi
