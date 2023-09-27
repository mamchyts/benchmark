FROM ubuntu:22.04

RUN apt update && apt --yes upgrade \
    && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt --yes install tzdata curl
RUN apt --yes install software-properties-common \
    && add-apt-repository --yes ppa:ondrej/php \
    && apt install --yes php5.6-cli php7.4-cli php8.2-cli
RUN apt-get install -y ca-certificates curl gnupg \
    && mkdir -p /etc/apt/keyrings \
    && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list \
    && apt-get update \
    && apt-get install nodejs -y \
    && npm install -g ts-node
RUN apt install --yes python2 python3 pypy pypy3
RUN apt install --yes g++
RUN apt install --yes nasm
RUN apt install --yes fpc
RUN apt install --yes golang
RUN apt install --yes openjdk-18-jdk
RUN apt install --yes rustc
RUN apt install --yes r-base
RUN apt install --yes wget \
    && sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' \
    && sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list' \
    && apt update \
    && apt install --yes dart
RUN apt install --yes perl
RUN apt install --yes lua5.4 luajit
RUN apt install --yes gnat
RUN apt install --yes git bison libgdbm-dev libssl-dev libyaml-dev curl \
    && curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash - \
    && /root/.rbenv/bin/rbenv install 3.2.2
RUN apt install --yes ghc
RUN wget https://github.com/JetBrains/kotlin/releases/download/v1.9.10/kotlin-compiler-1.9.10.zip \
    && unzip kotlin-compiler-1.9.10.zip -d /root \
    && rm -f kotlin-compiler-1.9.10.zip \
    && ln -s /root/kotlinc/bin/kotlinc /usr/local/bin/kotlinc
RUN curl -fsSL https://crystal-lang.org/install.sh | bash
RUN apt install gnupg ca-certificates \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
    && sh -c 'echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" > /etc/apt/sources.list.d/mono-official-stable.list' \
    && apt update \
    && apt install --yes mono-devel
RUN apt install --yes scala
RUN apt install --yes dotnet-sdk-7.0
RUN apt install --yes elixir
RUN apt install --yes binutils git gnupg2 libc6-dev libcurl4-openssl-dev libedit2 libgcc-9-dev libpython3.10 libsqlite3-0 libstdc++-9-dev libxml2-dev libz3-dev pkg-config tzdata unzip zlib1g-dev \
    && wget https://download.swift.org/swift-5.8.1-release/ubuntu2204/swift-5.8.1-RELEASE/swift-5.8.1-RELEASE-ubuntu22.04.tar.gz \
    && tar -xvzf swift-5.8.1-RELEASE-ubuntu22.04.tar.gz -C /root \
    && rm -f swift-5.8.1-RELEASE-ubuntu22.04.tar.gz \
    && ln -s /root/swift-5.8.1-RELEASE-ubuntu22.04/usr/bin/swift /usr/local/bin/swift
RUN wget https://nim-lang.org/download/nim-2.0.0-linux_x64.tar.xz \
    && tar -xf nim-2.0.0-linux_x64.tar.xz -C /root \
    && rm -f nim-2.0.0-linux_x64.tar.xz \
    && ln -s /root/nim-2.0.0/bin/nim /usr/local/bin/nim
RUN wget https://netcologne.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list \
    && apt update --allow-insecure-repositories \
    && apt --yes --allow-unauthenticated install --reinstall d-apt-keyring \
    && apt update \
    && apt install --yes dmd-compiler dub
RUN apt install --yes clisp
RUN apt install --yes haxe
RUN apt install --yes mono-vbnc
RUN apt install --yes build-essential gobjc gobjc++ gnustep gnustep-devel libgnustep-base-dev
RUN apt install --yes groovy
RUN apt install --yes gfortran
RUN wget https://github.com/PowerShell/PowerShell/releases/download/v7.3.7/powershell_7.3.7-1.deb_amd64.deb \
    && dpkg -i powershell_7.3.7-1.deb_amd64.deb \
    && rm powershell_7.3.7-1.deb_amd64.deb
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.3-linux-x86_64.tar.gz \
    && tar -xvzf julia-1.9.3-linux-x86_64.tar.gz -C /root \
    && rm -f julia-1.9.3-linux-x86_64.tar.gz \
    && ln -s /root/julia-1.9.3/bin/julia /usr/local/bin/julia
RUN apt install --yes xvfb libxrender1 libxtst6 libxi6 \
    && wget https://github.com/processing/processing4/releases/download/processing-1292-4.2/processing-4.2-linux-x64.tgz \
    && tar -xvzf processing-4.2-linux-x64.tgz -C /root \
    && rm -f processing-4.2-linux-x64.tgz
RUN apt-get update \
    && apt-get install --yes software-properties-common apt-transport-https \
    && apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xB4112585D386EB94 \
    && add-apt-repository 'deb https://dl.hhvm.com/universal release main' \
    && apt-get update \
    && apt-get install --yes hhvm
RUN apt install --yes rakudo
RUN wget -qO /etc/apt/trusted.gpg.d/vkpartner.asc https://artifactory-external.vkpartner.ru/artifactory/api/gpg/key/public \
    && echo "deb [arch=amd64] https://artifactory-external.vkpartner.ru/artifactory/kphp jammy main" | tee /etc/apt/sources.list.d/vkpartner.list \
    && apt update \
    && apt install --yes kphp vk-tl-tools
RUN apt install --yes valac
