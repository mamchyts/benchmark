FROM ubuntu:21.10

RUN apt update && apt -y upgrade
RUN apt -y install software-properties-common \
    && add-apt-repository -y ppa:ondrej/php \
    && apt install -y php5.6-cli php7.4-cli php8.1-cli
RUN apt install -y nodejs npm \
    && npm install -g ts-node
RUN apt install -y python2 python3 pypy pypy3
RUN apt install -y g++
RUN apt install -y nasm
RUN apt install -y fpc
RUN apt install -y golang
RUN apt install -y openjdk-18-jdk
RUN apt install -y rustc
RUN apt install -y r-base
RUN apt install -y wget \
    && sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' \
    && sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list' \
    && apt update \
    && apt install -y dart
RUN apt install -y perl
RUN apt install -y lua5.4 luajit
RUN apt install -y gnat
RUN apt install -y git bison libgdbm-dev libssl-dev libyaml-dev \
    && curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash - \
    && /root/.rbenv/bin/rbenv install 2.7.5 \
    && /root/.rbenv/bin/rbenv install 3.1.0
RUN apt install -y ghc
RUN wget https://github.com/JetBrains/kotlin/releases/download/v1.6.10/kotlin-compiler-1.6.10.zip \
    && unzip kotlin-compiler-1.6.10.zip -d /root/ \
    && rm -f kotlin-compiler-1.6.10.zip
RUN curl -fsSL https://crystal-lang.org/install.sh | bash
RUN apt install gnupg ca-certificates \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
    && sh -c 'echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" > /etc/apt/sources.list.d/mono-official-stable.list' \
    && apt update \
    && apt install -y mono-devel
RUN wget -O /etc/apt/trusted.gpg.d/vkpartner.asc https://repo.vkpartner.ru/GPG-KEY.pub \
    && echo "deb [arch=amd64] https://repo.vkpartner.ru/kphp-focal focal main" > /etc/apt/sources.list.d/vkpartner.list \
    && apt update \
    && apt install -y kphp vk-tl-tools \
    && mkdir -p /var/www/vkontakte/data/www/vkontakte.com/tl/ \
    && tl-compiler -e /var/www/vkontakte/data/www/vkontakte.com/tl/scheme.tlo /usr/share/vkontakte/tl-files/common.tl /usr/share/vkontakte/tl-files/tl.tl \
    && useradd -ms /bin/bash kitten
RUN apt install -y scala
RUN wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && rm packages-microsoft-prod.deb \
    && apt update \
    && apt install -y apt-transport-https \
    && apt update \
    && apt install -y dotnet-sdk-6.0
RUN apt install -y elixir
RUN apt install -y binutils git gnupg2 libc6-dev libcurl4 libedit2 libgcc-9-dev libpython2.7 libsqlite3-0 libstdc++-9-dev libxml2 libz3-dev pkg-config tzdata zlib1g-dev \
    && wget https://swift.org/builds/swift-5.5.2-release/ubuntu2004/swift-5.5.2-RELEASE/swift-5.5.2-RELEASE-ubuntu20.04.tar.gz \
    && tar -xvzf swift-5.5.2-RELEASE-ubuntu20.04.tar.gz -C /root
RUN apt install -y nim
RUN wget https://netcologne.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list \
    && apt update --allow-insecure-repositories \
    && apt -y --allow-unauthenticated install --reinstall d-apt-keyring \
    && apt update \
    && apt install -y dmd-compiler dub
RUN apt install -y clisp
RUN apt install -y haxe
