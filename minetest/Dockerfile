FROM ubuntubase

USER root

RUN add-apt-repository ppa:minetestdevs/stable
RUN apt-get update

RUN apt-get install -y minetest

RUN useradd -m minetest
RUN gpasswd -a minetest sudo
RUN echo "minetest:$(grep ubuntu: /etc/shadow | cut -d: -f2)"|chpasswd -e

USER minetest
WORKDIR /home/minetest
RUN mkdir .minetest
RUN ln -s /home/minetest/.minetest gamedata

VOLUME /home/minetest/.minetest

CMD ["minetest", "--server"]
