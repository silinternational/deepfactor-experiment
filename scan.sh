#!/usr/bin/env sh

go build -o app ./cmd/

dfctl scan -s fs -a deepfactor-experiment -c hello-world -V 0.0.1 -f json -O results .
