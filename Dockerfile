FROM debian:buster

RUN apt-get update && \
        apt-get -y install golang nodejs vim-nox hugo git && \
        npm install -g yarn

COPY utils/ /usr/local/bin/
