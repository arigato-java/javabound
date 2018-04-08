#!/bin/sh -e
SRC_ROOT="`dirname $0`/.."
cd "$SRC_ROOT"
find src -type f -regex '.*\.\(frames\|object\|recipe\|patch\)$' -print0 | \
xargs -0 node --check

