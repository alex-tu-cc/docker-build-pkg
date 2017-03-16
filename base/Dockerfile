#IMAGE_NAME: alextucc/build-pkg:base
FROM alextucc/xenial_env:base
MAINTAINER Alex Tu
RUN \
 useradd -ms /bin/bash user; echo "user:u" | chpasswd; adduser user sudo; \
 export genfile="/usr/sbin/install-deps-from-debian.sh";\
 echo "#!/bin/sh" > $genfile; \
 echo "sudo apt-get update; yes| sudo mk-build-deps --install --tool apt-get --build-dep debian/control" > $genfile; \
 export genfile="/usr/sbin/build-debian-package.sh";\
 echo "#!/bin/sh" > $genfile; \
 echo "debuild -i -b -us -uc" > $genfile; \
 apt-get update; \
 apt-get install -y devscripts equivs pkg-create-dbgsym; \
 apt-get install ccache; \
 sed 's/\(ENV_PATH[[:blank:]]*PATH\)=/\1=\/usr\/lib\/ccache:/' -i /etc/login.defs

ENV CCACHE_DIR /ccache
ENV PATH /usr/lib/ccache:$PATH
#WORKDIR /home/user
