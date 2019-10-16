#!/bin/bash

docker run --rm -it  \
    -v "`pwd`/in:/home/pandoc/workspace/in" -v "`pwd`/out:/home/pandoc/workspace/out" \
    scattercode/pandoc:1.19.2.4 \
    bash
