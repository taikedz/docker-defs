# Docker environments

Some docker environments I use to isolate scratch tests...

## Builds

Build and name using `build.sh` - the script takes a directory, and names an image using the same name if there is a Dockerfile in it.

	./build.sh ubuntubase/
	./build.sh pip/

## Running

Copy `cenv` to `~/.local/bin`

Run `cenv $IMAGENAME` to run a transient container, with the current working directory as a subdirectory of `/home/ubuntu`

	cenv pip
