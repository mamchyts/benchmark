FROM ubuntu:20.04

RUN apt update && apt -y upgrade
RUN apt -y install software-properties-common && add-apt-repository -y ppa:ondrej/php && apt install -y php5.6-cli php7.4-cli php8.0-cli
RUN apt install -y nodejs
RUN apt install -y python2 python3
RUN apt install -y g++
RUN apt install -y nasm
RUN apt install -y fpc
RUN apt install -y golang
RUN apt install -y openjdk-16-jdk
RUN apt install -y rustc
RUN apt install -y r-base
RUN apt install -y wget && sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' && sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list' && apt update && apt install -y dart
RUN apt install -y perl
RUN apt install -y lua5.3
RUN apt install -y gnat-gps
RUN apt install -y git bison libgdbm-dev libssl-dev libyaml-dev && curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash - && /root/.rbenv/bin/rbenv install 2.7.3 && /root/.rbenv/bin/rbenv install 3.0.1
RUN apt install -y ghc
RUN apt install -y pypy
RUN apt install -y pypy3
