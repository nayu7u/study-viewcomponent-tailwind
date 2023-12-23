FROM ruby:3.2-slim
ARG GID
ARG UID
ARG GROUPNAME
ARG USERNAME
RUN groupadd -g $GID $GROUPNAME \
    && useradd -l -m -s /bin/bash -u $UID -g $GID $USERNAME
RUN apt-get update -qq \
    && apt-get -y install --no-install-recommends make build-essential git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
