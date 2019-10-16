FROM ubuntu:18.04

USER root

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN apt-get update &&\
	apt-get install -y gnupg wget libgetopt-long-descriptive-perl make \
	libdigest-perl-md5-perl python-pygments fontconfig

COPY texlive.profile /

RUN wget ftp://tug.org/historic/systems/texlive/2018/install-tl-unx.tar.gz &&\
	tar xzvf install-tl-unx.tar.gz &&\
	./install-tl-*/install-tl -profile texlive.profile &&\
	rm -rf install-tl-* &&\
	rm texlive.profile

ENV PATH="/usr/local/texlive/2018/bin/x86_64-linux:${PATH}"

RUN apt-get install -y pandoc &&\
	rm -rf /var/lib/apt/lists/* &&\
	useradd --user-group --create-home --shell /bin/false pandoc

ENV HOME=/home/pandoc

WORKDIR $HOME/workspace
RUN chown -R pandoc:pandoc $HOME/workspace

CMD ["tlmgr", "--version"]
