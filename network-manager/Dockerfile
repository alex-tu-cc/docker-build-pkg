#IMAGE_NAME: alextucc/build-pkg:network-manager
FROM alextucc/build-pkg:base
MAINTAINER Alex Tu
RUN \
 useradd -ms /bin/bash user; echo "user:u" | chpasswd; adduser user sudo; \
 apt-get build-dep -y network-manager network-manager-gnome apt-utils; \
 # these 2 package not be listed in control, but cause failed in autogen.
 apt-get install -y libnss3-dev iptables
  

#USER user
#WORKDIR /home/user
