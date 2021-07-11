FROM ubuntu:21.04

RUN apt update && apt -y upgrade
RUN apt -y install software-properties-common && \
    add-apt-repository -y ppa:ondrej/php && \
    apt install -y php5.6-cli php7.4-cli php8.0-cli
RUN apt install -y nodejs
RUN apt install -y python2 python3 pypy pypy3
RUN apt install -y g++
RUN apt install -y nasm
RUN apt install -y fpc
RUN apt install -y golang
RUN apt install -y openjdk-16-jdk
RUN apt install -y rustc
RUN apt install -y r-base
RUN apt install -y wget && \
    sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' && \
    sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list' && \
    apt update && \
    apt install -y dart
RUN apt install -y perl
RUN apt install -y lua5.3 luajit
RUN apt install -y gnat
RUN apt install -y git bison libgdbm-dev libssl-dev libyaml-dev && \
    curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash - && \
    /root/.rbenv/bin/rbenv install 2.7.3 && \
    /root/.rbenv/bin/rbenv install 3.0.1
RUN apt install -y ghc
RUN wget https://github.com/JetBrains/kotlin/releases/download/v1.5.20/kotlin-compiler-1.5.20.zip && \
    unzip kotlin-compiler-1.5.20.zip -d /root/ && \
    rm -f kotlin-compiler-1.5.20.zip
RUN curl -fsSL https://crystal-lang.org/install.sh | bash
RUN apt install gnupg ca-certificates && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
    sh -c 'echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" > /etc/apt/sources.list.d/mono-official-stable.list' && \
    apt update && \
    apt install -y mono-devel
RUN wget -O /etc/apt/trusted.gpg.d/vkpartner.asc https://repo.vkpartner.ru/GPG-KEY.pub && \
    echo "deb [arch=amd64] https://repo.vkpartner.ru/kphp-focal focal main" > /etc/apt/sources.list.d/vkpartner.list && \
    apt update && \
    apt install -y kphp vk-tl-tools && \
    mkdir -p /var/www/vkontakte/data/www/vkontakte.com/tl/ && \
    tl-compiler -e /var/www/vkontakte/data/www/vkontakte.com/tl/scheme.tlo /usr/share/vkontakte/tl-files/common.tl /usr/share/vkontakte/tl-files/tl.tl && \
    useradd -ms /bin/bash kitten
RUN apt install -y scala
RUN wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt update && \
    apt install -y apt-transport-https && \
    apt update && \
    apt install -y dotnet-sdk-5.0
RUN apt install -y elixir
