#!/bin/bash

docker run --rm -i  \
    -v "`pwd`/in:/home/pandoc/workspace/in" -v "`pwd`/out:/home/pandoc/workspace/out" \
    scattercode/pandoc:1.19.2.4 \
    pandoc in/test.html -f html -t latex -o out/test.pdf


docker run --rm -i  \
    -v "`pwd`/in:/home/pandoc/workspace/in" -v "`pwd`/out:/home/pandoc/workspace/out" \
    scattercode/pandoc:1.0 \
    pandoc -v
