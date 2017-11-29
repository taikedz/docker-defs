FROM ubuntubase

USER root

RUN apt-get install -y python3 python-pip3
RUN pip3 install --upgrade pip3
RUN pip3 install virtualenv

USER ubuntu
WORKDIR /home/ubuntu
