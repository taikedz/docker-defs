FROM ubuntu:latest

RUN apt-get update
RUN apt-get install tmux htop vim git ca-certificates sudo -y

RUN useradd -m ubuntu
# Set the ubuntu user's password to 'ubuntu'
RUN sed -r 's|^ubuntu:.+|ubuntu:$6$/os6kZjn$We9N12ohtJ1oVeaA8QgPNMv/5EzljuFxadZ3dpA9pUQ501FUnYz1Pe0B2MDDSzOCIqg5hRlhwDbvvxIKFcQYG1:17457:0:99999:7:::|' -i /etc/shadow
RUN gpasswd -a ubuntu sudo

USER ubuntu
