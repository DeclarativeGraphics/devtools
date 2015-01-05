#!/bin/sh

tools="$(dirname "$0")"

cabal install --only-dependencies
cabal configure
