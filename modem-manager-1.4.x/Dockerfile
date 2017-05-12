#IMAGE_NAME: alextucc/build-pkg:modem-manager-1.4.x
FROM alextucc/build-pkg:base
MAINTAINER Alex Tu
RUN \
 apt-get build-dep -y modemmanager apt-utils;
 # these 2 package not be listed in control, but cause failed in autogen.
 #  apt-get install -y libnss3-dev iptables
WORKDIR /srv/src
ENTRYPOINT usermod -u `ls -n | tail -1 | awk '{print $3}'` user; groupmod -g `ls -n | tail -1 | awk '{print $4}'` user; su -p user
