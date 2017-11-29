# Docker environments

Some docker environments I use to isolate scratch tests...

## Builds

You can use `make` to build any of the images by name - for example, `make pip`

## Running

Install `cenv` by running `./install-cenv.sh`

Run `cenv $IMAGENAME` to run a container, with the current working directory as a subdirectory of `/var/hostdata`

	cenv pip

You can include any extra options before using the image name - for example for a transient container

	cenv --rm pip

## Running graphical applications

You can run graphical apps with `cenvx`:

	cenvx firefox
