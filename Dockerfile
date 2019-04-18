FROM debian:buster

RUN apt-get update && \
        apt-get -y install golang nodejs vim-nox hugo
