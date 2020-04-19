#!/bin/sh

docker run --rm -it -v ${pwd}/tests/:/tests:ro carlos3d/end-to-end-tests --variable BROWSER:chrome /tests