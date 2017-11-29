#!/bin/bash

bindir="$HOME/.local/bin"

if [[ "$UID" = 0 ]]; then
	bindir=/usr/local/bin
fi

cd "$(dirname "$0")"

cp cenv "$bindir/cenv"

ln -s "$bindir/cenv" "$bindir/cenvx"
