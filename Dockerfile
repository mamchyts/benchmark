FROM ubuntu:22.04

RUN apt update && apt -y upgrade \
    && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt -y install tzdata
RUN apt -y install software-properties-common \
    && add-apt-repository -y ppa:ondrej/php \
    && apt install -y php5.6-cli php7.4-cli php8.2-cli
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
RUN apt install -y git bison libgdbm-dev libssl-dev libyaml-dev curl \
    && curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash - \
    && /root/.rbenv/bin/rbenv install 2.7.8 \
    && /root/.rbenv/bin/rbenv install 3.2.2
RUN apt install -y ghc
RUN wget https://github.com/JetBrains/kotlin/releases/download/v1.8.21/kotlin-compiler-1.8.21.zip \
    && unzip kotlin-compiler-1.8.21.zip -d /root \
    && rm -f kotlin-compiler-1.8.21.zip \
    && ln -s /root/kotlinc/bin/kotlinc /usr/local/bin/kotlinc
RUN curl -fsSL https://crystal-lang.org/install.sh | bash
RUN apt install gnupg ca-certificates \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
    && sh -c 'echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" > /etc/apt/sources.list.d/mono-official-stable.list' \
    && apt update \
    && apt install -y mono-devel
RUN apt install -y scala
RUN apt install -y dotnet-sdk-7.0
RUN apt install -y elixir
RUN apt install -y binutils git gnupg2 libc6-dev libcurl4-openssl-dev libedit2 libgcc-9-dev libpython3.10 libsqlite3-0 libstdc++-9-dev libxml2-dev libz3-dev pkg-config tzdata unzip zlib1g-dev \
    && wget https://download.swift.org/swift-5.8.1-release/ubuntu2204/swift-5.8.1-RELEASE/swift-5.8.1-RELEASE-ubuntu22.04.tar.gz \
    && tar -xvzf swift-5.8.1-RELEASE-ubuntu22.04.tar.gz -C /root \
    && rm -f swift-5.8.1-RELEASE-ubuntu22.04.tar.gz \
    && ln -s /root/swift-5.8.1-RELEASE-ubuntu22.04/usr/bin/swift /usr/local/bin/swift
RUN wget https://nim-lang.org/download/nim-1.6.12-linux_x64.tar.xz \
    && tar -xf nim-1.6.12-linux_x64.tar.xz -C /root \
    && rm -f nim-1.6.12-linux_x64.tar.xz \
    && ln -s /root/nim-1.6.12/bin/nim /usr/local/bin/nim
RUN wget https://netcologne.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list \
    && apt update --allow-insecure-repositories \
    && apt -y --allow-unauthenticated install --reinstall d-apt-keyring \
    && apt update \
    && apt install -y dmd-compiler dub
RUN apt install -y clisp
RUN apt install -y haxe
RUN apt install -y mono-vbnc
RUN apt install -y build-essential gobjc gobjc++ gnustep gnustep-devel libgnustep-base-dev
RUN apt install -y groovy
RUN apt install -y gfortran
RUN wget https://github.com/PowerShell/PowerShell/releases/download/v7.3.4/powershell_7.3.4-1.deb_amd64.deb \
    && dpkg -i powershell_7.3.4-1.deb_amd64.deb \
    && rm powershell_7.3.4-1.deb_amd64.deb
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.0-linux-x86_64.tar.gz \
    && tar -xvzf julia-1.9.0-linux-x86_64.tar.gz -C /root \
    && rm -f julia-1.9.0-linux-x86_64.tar.gz \
    && ln -s /root/julia-1.9.0/bin/julia /usr/local/bin/julia
RUN apt install -y xvfb libxrender1 libxtst6 libxi6 \
    && wget https://github.com/processing/processing4/releases/download/processing-1292-4.2/processing-4.2-linux-x64.tgz \
    && tar -xvzf processing-4.2-linux-x64.tgz -C /root \
    && rm -f processing-4.2-linux-x64.tgz
RUN apt-get update \
    && apt-get install --yes software-properties-common apt-transport-https \
    && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xB4112585D386EB94 \
    && add-apt-repository 'deb https://dl.hhvm.com/universal release main' \
    && apt-get update \
    && apt-get install --yes hhvm
RUN apt install -y rakudo
RUN wget -qO /etc/apt/trusted.gpg.d/vkpartner.asc https://artifactory-external.vkpartner.ru/artifactory/api/gpg/key/public \
    && echo "deb [arch=amd64] https://artifactory-external.vkpartner.ru/artifactory/kphp jammy main" | tee /etc/apt/sources.list.d/vkpartner.list \
    && apt update \
    && apt install -y kphp vk-tl-tools
