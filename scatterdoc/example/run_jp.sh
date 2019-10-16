#!/bin/bash

curl http://127.0.0.1/api/investors/Credit%20Suisse%20Alternative%20Funds%20Solutions/pdf > './in/investor.html'

html-pdf ./in/investor.html ./out/investor.pdf

# docker run --rm -i  \
#     -v "`pwd`/in:/home/pandoc/workspace/in" -v "`pwd`/out:/home/pandoc/workspace/out" \
#     scattercode/pandoc:1.19.2.4 \
#     pandoc in/investor.html -f html -t latex -o out/investor.pdf

open ./out/investor.pdf
