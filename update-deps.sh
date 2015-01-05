#!/bin/sh

base="$(dirname "$0")"
source ${base}/settings.sh

cd deps
for dep in $deps; do
  cd "$dep"
  git update
  cd ..
done
cd ..

${base}/install-deps.sh
