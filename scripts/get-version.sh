#!/bin/sh

if [ -f version ]; then
    cat version
elif git rev-parse --abbrev-ref HEAD | grep -q "^release-"; then
    git rev-parse --abbrev-ref HEAD | sed 's/^release-//'
else
    git describe --tags
fi
