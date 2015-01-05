#!/bin/bash

tools="$(dirname "$0")"

cabal sandbox init
${tools}/fetch-deps.sh
${tools}/install-deps.sh
