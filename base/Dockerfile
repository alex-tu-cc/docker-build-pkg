#IMAGE_NAME: alextucc/build-pkg:base
FROM alextucc/xenial_env:base
MAINTAINER Alex Tu
RUN \
# useradd -ms /bin/bash user; \
 apt-get update; \
 apt-get install -y devscripts equivs pkg-create-dbgsym; \
 apt-get install ccache;

#USER user
#WORKDIR /home/user
