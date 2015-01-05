#!/bin/bash

base="$(pwd)"
tools="$(dirname "$0")"
. devtools-settings.sh

if ! [ -e "$depslocation" ]; then
  mkdir "$depslocation"
fi

cd "$depslocation"
for dep in $deps; do
  git clone "${repo}/${dep}" "$dep"
done
cd "$base"

${tools}/register-deps.sh
