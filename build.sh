#!/bin/bash

faile() {
	echo "$*" >&2
	exit 1
}

printhelp() {
    echo "$0 TARGET DOCKER_BUILD_ARGS ..."
}

main() {
    [[ -n "$*" ]] || {
        printhelp
        exit
    }

	local thedir="definitions/$1"; shift

	if [[ ! -f "$thedir/Dockerfile" ]]; then
		faile "Could not find [$thedir/Dockerfile]"
	fi

	local thename="$(basename "$thedir")"

	docker build -t "$thename" "$@" "$thedir"
}

main "$@"
