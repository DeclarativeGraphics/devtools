#!/bin/sh

base="$(pwd)"
tools="$(dirname "$0")"
source devtools-settings.sh

cd "$depslocation"
for dep in $deps; do
  cd "$dep"
  git pull
  cd -
done
cd "$base"

${tools}/install-deps.sh
