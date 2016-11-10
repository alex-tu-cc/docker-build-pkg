#docker image which used to build network-manager
the dependency is ready to build 
 * network-manager:
  * 

 * network-manager:
  * https://wiki.gnome.org/Projects/NetworkManager
  * I got some error by following wiki to execute 'make' after 'autogen.sh', then execute ./configure before make could fixe it.
  * for source which have debian folder, can just execute ```debuild -i -b -uc -us``` to build it.

 * network-manager-gnome:
  * https://wiki.gnome.org/Projects/NetworkManager
  * 

## Usage:
```
 $ docker run -it --rm -v `pwd`:/srv/src alextucc/build-pkg:network-manager
 # change account to user
 $ su user
 $ cd /srv/src
 # followed the build instructions to build it.
```
