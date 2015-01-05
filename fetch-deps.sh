#!/bin/sh

base="$(dirname "$0")"
source ${base}/settings.sh

if ! [ -e deps ]; then
  mkdir deps
fi

cd deps
for dep in $deps; do
  git clone "${dgrepo}/${dep}" "$dep"
done
cd ..

for dep in $deps; do
  cabal sandbox add-source "deps/${dep}"
done
