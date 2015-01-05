#!/bin/bash

base="$(pwd)"
tools="$(dirname "$0")"

cd "$tools"
git pull
cd "$base"
