FROM ubuntu

# Based on https://blog.jessfraz.com/post/docker-containers-on-the-desktop/
#
# You can run your thunderbird with
#
#   docker run -it --rm --cpuset-cpus 0,1 --memory 1gb --net host -e DISPLAY=unix$DISPLAY --device /dev/snd thunderbird
# 
# If you get errors about "Broadway display type not supported" or such, try
#
#   xhost localhost:root
#
# (note this change is .... global? permanent?)

RUN apt-get update
RUN apt-get install -y thunderbird
#RUN apt-get install pulseaudio -y

RUN useradd thunderbird -m
USER thunderbird

ENTRYPOINT /usr/bin/thunderbird
