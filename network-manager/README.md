#docker image which used to build network-manager
the dependency is ready to build packages which be listed below
 * network-manager deb package in Ubuntu:
 * just use ``debuild -i -b -uc -us`` to build it.
 * verified on: deb package source of network-manager-1.2.2

 * upstream network-manager:
  * https://wiki.gnome.org/Projects/NetworkManager
  * I got some error by following wiki to execute 'make' after 'autogen.sh', then execute ./configure before make could fixe it.
  * verified on: upstream source of commit ba2b2de3adcf3e8286249523e3841858e0c2655c

 * network-manager-gnome:
  * https://wiki.gnome.org/Projects/NetworkManager

## Usage:
```bash
 $ docker run -it --rm -v `pwd`:/srv/src alextucc/build-pkg:network-manager
 # change account to user
 $ su user
 $ cd /srv/src
 # followed the build instructions to build it.
```
