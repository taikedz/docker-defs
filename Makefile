SHELL=/bin/bash

.NOTPARALLEL .PHONY: ubuntubase

ubuntubase:
	./build.sh ubuntubase --no-cache

pip: ubuntubase
	./build.sh pip

php: ubuntubase
	./build.sh php

qupzilla: ubuntubase
	./build.sh qupzilla

firefox: ubuntubase
	./build.sh firefox

thunderbird: ubuntubase
	./build.sh thunderbird

