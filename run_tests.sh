#!/bin/sh

docker run --rm -it -v ${pwd}/tests/:/tests:ro -v ${pwd}/results:/results:rw cppmx/end-to-end-tests --outputdir /results --variable BROWSER:chrome /tests