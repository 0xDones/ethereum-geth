FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y curl sudo build-essential golang git-core && \
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && \
    sudo apt-get install -y nodejs software-properties-common && \
    sudo add-apt-repository -y ppa:ethereum/ethereum && \
    sudo apt-get update && \
    sudo apt-get install ethereum -y && \
    sudo npm install -g bower gulp

WORKDIR /www

ADD . .

CMD ["node", "app.js"]
