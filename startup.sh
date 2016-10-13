#!/bin/bash -u

cat << EOF > /data/murmur.ini
database=/data/mumble-server.sqlite
welcometext="<br />Mumble Server"
host=0.0.0.0
port=64738
bandwidth=72000
users=100
uname=mumble-server
serverpassword=MURMURPASSWORD
bonjour=False
EOF
sed -i "s/MURMURPASSWORD/${MURMURPASSWORD}/g" /data/murmur.ini

/usr/sbin/murmurd -ini /data/murmur.ini -fg

