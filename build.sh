#!/usr/bin/env bash

alias CMD = 'docker run -v `pwd`/src:/source -v `pwd`/dist:/dist jagregory/pandoc'

################################################################################

docker run \
  -v $(pwd)/src:/source \
  -v $(pwd)/dist:/dist \
  jagregory/pandoc \
  --from=markdown \
  --toc \
  --to=latex \
  --output=/dist/document.pdf \
  metadata.yml document.md

################################################################################

docker run \
  -v $(pwd)/src:/source \
  -v $(pwd)/dist:/dist \
  jagregory/pandoc \
  --standalone \
  --from=markdown \
  --to=latex \
  --output=/dist/document.tex \
  metadata.yml document.md

################################################################################

docker run \
  -v $(pwd)/src:/source \
  -v $(pwd)/dist:/dist \
  jagregory/pandoc \
  --columns=80 \
  --from=markdown \
  --to=plain \
  --output=/dist/document.txt \
  metadata.yml document.md

################################################################################

#  --output=dist/document.pdf \
#  src/document.md

#docker run \
#  -v $(pwd)/src:/source \
#  -v $(pwd)/dist:/dist \
#  jagregory/pandoc \
#  --template=template.tex \
#  --from=markdown \
#  --output=/dist/document.pdf \
#  metadata.yml document.md

#  --template=script/default.latex \
#  --latex-engine=xelatex \
