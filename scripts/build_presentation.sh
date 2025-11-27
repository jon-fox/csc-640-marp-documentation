#!/bin/bash

cat > presentation/presentation.md << 'EOF'
---
marp: true
theme: default
paginate: true
style: |
  section h1 {
    position: absolute;
    top: 50px;
    left: 50px;
    right: 50px;
  }
  section {
    padding-top: 120px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
  }
---

EOF

cat report/introduction.md >> presentation/presentation.md
echo "" >> presentation/presentation.md
cat report/principles.md >> presentation/presentation.md
echo "" >> presentation/presentation.md
cat report/frameworks.md >> presentation/presentation.md
echo "" >> presentation/presentation.md
cat report/testing.md >> presentation/presentation.md
echo "" >> presentation/presentation.md
cat report/documentation.md >> presentation/presentation.md

echo "presentation/presentation.md generated"
