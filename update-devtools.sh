#!/bin/sh

base="$(dirname "$0")"

cd "$base"
git pull
cd ..
