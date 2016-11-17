#!/usr/bin/env bash

DIR=$1

git ls-tree -r --name-only HEAD $DIR | xargs -n1 -I{} bash -c 'printf "%-80s %s\n" {} "$(git log -1 --format=%ar {})"'
