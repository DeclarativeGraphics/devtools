#!/bin/sh

base="$(pwd)"
tools="$(dirname "$0")"
source devtools-settings.sh

if ! [ -e "$depslocation" ]; then
  mkdir "$depslocation"
fi

cd "$depslocation"
for dep in $deps; do
  git clone "${dgrepo}/${dep}" "$dep"
done
cd "$base"

for dep in $deps; do
  cabal sandbox add-source "${depslocation}/${dep}"
done
