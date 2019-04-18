FROM debian:buster

RUN apt-get update && \
        apt-get -y install golang nodejs vim-nox hugo git curl && \
        curl -L https://npmjs.org/install.sh | sh && \
        npm install -g yarn

COPY utils/ /usr/local/bin/
