#!/bin/bash

cat > toc.md << 'EOF'
# Basic Category Theory - Notes

## Contents

1. Free categories and graphs
2. Representables
3. Yoneda lemma
4. Embedding and applications
5. Limits
6. Adjoints
EOF

pandoc toc.md -o toc.pdf --pdf-engine=pdflatex -V geometry:margin=1in

pdfunite \
  toc.pdf \
  3/3_2.pdf \
  4/4_1.pdf \
  4/4_2.pdf \
  4/4_3.pdf \
  5/5.pdf \
  6/6.pdf \
  notes.pdf

rm toc.md toc.pdf
