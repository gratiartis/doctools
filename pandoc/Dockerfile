FROM ubuntu:18.04

USER root

RUN apt-get update &&\
    apt-get install -y texlive pandoc

RUN useradd --user-group --create-home --shell /bin/false pandoc

ENV HOME=/home/pandoc
WORKDIR $HOME/workspace
RUN chown -R pandoc:pandoc $HOME/workspace

#USER pandoc
