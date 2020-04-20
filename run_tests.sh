#!/bin/sh

docker run --rm -it -v ${pwd}/tests/:/tests:ro -v ${pwd}/results:/results:rw carlos3d/end-to-end-tests --outputdir /results --variable BROWSER:chrome /tests