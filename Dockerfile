FROM ruby:3.2-slim
ARG GID
ARG UID
ARG GROUPNAME
ARG USERNAME
RUN groupadd -g $GID $GROUPNAME \
    && useradd -l -m -s /bin/bash -u $UID -g $GID $USERNAME
RUN touch /etc/apt/sources.list
RUN echo "deb http://ftp.jp.debian.org/debian/ bookworm main contrib non-free non-free-firmware" >> /etc/apt/sources.list
RUN echo "deb http://ftp.jp.debian.org/debian/ bookworm-updates main contrib non-free non-free-firmware" >> /etc/apt/sources.list
RUN apt-get update -qq \
    && apt-get -y install --no-install-recommends make build-essential git nodejs npm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /workspace
COPY Gemfile /workspace/Gemfile
COPY Gemfile.lock /workspace/Gemfile.lock
RUN bundle install
RUN gem install foreman
