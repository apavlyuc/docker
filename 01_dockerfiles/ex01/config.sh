#!/bin/sh

TS3_RELEASE_URL="http://dl.4players.de/ts/releases"
TS3_TARBALL=teamspeak3-server_linux_amd64-${TS3_VERSION}.tar.bz2

curl -s ${TS3_RELEASE_URL}/${TS3_VERSION}/${TS3_TARBALL} --output /${TS3_TARBALL}
tar -C / -xjf /${TS3_TARBALL}
rm -fr /${TS3_TARBALL}
apt-get -qqy purge -y curl bzip2
apt-get -qqy autoremove
rm -r /var/lib/apt/lists/*

/teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh

