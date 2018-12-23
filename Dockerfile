FROM ubuntu:bionic

RUN apt-get update -qq \
  && apt-get -y --no-install-recommends install \
    yabasic \
  && rm -rf /var/lib/apt/lists/*

ENV TERM xterm
