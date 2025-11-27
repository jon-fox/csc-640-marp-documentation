#!/bin/bash

cat > report/report.md << 'EOF'
# Quality Software Documentation

**Author:** Jon Fox
**Course:** CSC 640
**Semester:** Fall 2025

---

EOF

cat report/introduction.md >> report/report.md
echo "" >> report/report.md
cat report/principles.md >> report/report.md
echo "" >> report/report.md
cat report/frameworks.md >> report/report.md
echo "" >> report/report.md
cat report/testing.md >> report/report.md
echo "" >> report/report.md
cat report/documentation.md >> report/report.md

echo "report/report.md generated"
