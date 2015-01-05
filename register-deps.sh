#!/bin/sh

base="$(pwd)"
tools="$(dirname "$0")"
source ${tools}/settings.sh

for dep in $deps; do
  cabal sandbox add-source "${depslocation}/${dep}"
done
