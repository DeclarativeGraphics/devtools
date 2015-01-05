#!/bin/sh

base="$(dirname "$0")"

cabal install --only-dependencies
cabal configure
