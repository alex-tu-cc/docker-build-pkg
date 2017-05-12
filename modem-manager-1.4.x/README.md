#docker image which used to build network-manager
the dependency is ready to build packages which be listed below
 * modem-manager deb package in Ubuntu:
 * just use ``debuild -i -b -uc -us`` to build it.
 * verified on: deb package source of modem-manager-1.4.12

 * upstream network-manager:
  * git://anongit.freedesktop.org/ModemManager/ModemManager

## Usage:
```bash
 # in the parent directory of the sourc you want to build
 # ex. /home/u/parent-d/packageA is the source location.
 /home/u/parent-d/packageA$ sudo docker run -it --rm -v $(ccache -p | grep cache_dir -m 1 | awk '{print $NF}'):/ccache -v `pwd`:/srv/src alextucc/build-pkg:modem-manager-1.4.x

 # now you are in docker shell
 /srv/src$ cd packageA
 /srv/src/packageA$ debuild -i -b -us -uc

 # then you get packages in parent-d/
```
