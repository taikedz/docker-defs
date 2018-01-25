SHELL=/bin/bash

.NOTPARALLEL .PHONY: ubuntubase freshbase

freshbase:
	./build.sh ubuntubase --no-cache

ubuntubase:
	./build.sh ubuntubase

pip: ubuntubase
	./build.sh pip

php: ubuntubase
	./build.sh php

npm: ubuntubase
	./build.sh npm

qupzilla: ubuntubase
	./build.sh qupzilla

firefox: ubuntubase
	./build.sh firefox

thunderbird: ubuntubase
	./build.sh thunderbird
