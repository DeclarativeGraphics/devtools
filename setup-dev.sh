#!/bin/sh

base="$(dirname "$0")"

cabal sandbox init
${base}/fetch-deps.sh
${base}/install-deps.sh
