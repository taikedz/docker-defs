FROM ubuntubase

USER root

RUN apt-get install -y python3 python3-pip
RUN pip install --upgrade pip
RUN pip install virtualenv

USER ubuntu
WORKDIR /home/ubuntu
