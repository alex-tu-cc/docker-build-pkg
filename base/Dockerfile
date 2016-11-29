#IMAGE_NAME: alextucc/build-pkg:base
FROM alextucc/xenial_env:base
MAINTAINER Alex Tu
RUN \
 useradd -ms /bin/bash user; echo "user:u" | chpasswd; adduser user sudo; \
 apt-get update; \
 apt-get install -y devscripts equivs pkg-create-dbgsym; \
 apt-get install ccache

ENV CCACHE_DIR /ccache
ENV PATH /usr/lib/ccache:$PATH
#WORKDIR /home/user
