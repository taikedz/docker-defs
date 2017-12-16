SHELL=/bin/bash

.NOTPARALLEL .PHONY: ubuntubase emby

ubuntubase:
	./build.sh ubuntubase --no-cache

emby:
	./build.sh emby

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

