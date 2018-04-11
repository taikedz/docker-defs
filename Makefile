SHELL=/bin/bash

.NOTPARALLEL .PHONY: ubuntubase force emby

# This will ALWAYS build without caches
force:
	./build.sh ubuntubase --no-cache

# This will rely on the cached images most of the time
ubuntubase:
	./build.sh ubuntubase

emby:
	./build.sh emby

apache2:
	./build.sh apache2

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
