FROM ubuntubase

USER root

RUN apt-get install -y apache2 php libapache2-mod-php && a2enmod ssl && a2ensite default-ssl

USER ubuntu
WORKDIR /home/ubuntu
