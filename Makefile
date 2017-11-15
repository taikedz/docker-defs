SHELL=/bin/bash

.NOTPARALLEL .PHONY: ubuntubase

ubuntubase:
	./build.sh ubuntubase

pip: ubuntubase
	./build.sh pip

php: ubuntubase
	./build.sh php

firefox: ubuntubase
	./build.sh firefox

thunderbird: ubuntubase
	./build.sh thunderbird

