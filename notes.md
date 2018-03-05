# Docker notes

Some troubleshooting notes

## No network

On the host run

	ip a

There should be a `docker0` bridge - see if it is `up` or `down` -- likely it is currently down

You need to run

	ip link set docker0 up && systemctl restart docker

This should activate the bridge, and make the networking available once more
