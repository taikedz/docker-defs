#!/bin/bash

faile() {
	echo "$*" >&2
	exit 1
}

main() {
	local thedir=$1; shift

	if [[ ! -f "$thedir/Dockerfile" ]]; then
		faile "Could not find [$thedir/Dockerfile]"
	fi

	local thename=$(basename $thedir)

	docker build -t $thename "$@" ./$thedir
}

main "$@"
