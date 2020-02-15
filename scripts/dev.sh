#!/bin/bash

set -eou pipefail

# Ensure the script runs from .git root directory
pushd $(git rev-parse --show-toplevel)
./scripts/build.sh --dev-mode
./node_modules/.bin/watch 'yarn build --dev-mode' 'src' &
./node_modules/.bin/live-server --entry-file=index.html --no-css-inject --port=8080 --wait=300 dist
popd
