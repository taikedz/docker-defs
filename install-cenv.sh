#!/bin/bash

bindir="$HOME/.local/bin"

if [[ "$UID" = 0 ]]; then
	bindir=/usr/local/bin
fi

cd "$(dirname "$0")"

cp cenv "$bindir/cenv"

extra_targets=(cenvx cenvb)

for t in "${extra_targets[@]}"; do
    [[ ! -e "$bindir/$t" ]] || continue
    ( set -x
    ln -s "$bindir/cenv" "$bindir/$t"
    )
done

echo "Installed commands: cenv ${extra_targets[*]}"
