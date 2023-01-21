#!/bin/sh
groupadd -r $USER -g 433 \
&& useradd -u 431 -r -g $USER -d /home/$USER -s /bin/bash -c "$USER" $USER \
&& mkdir /home/$USER \
&& chown -R $USER:$USER /home/$USER \
&& echo $USER':'$PASSWORD | chpasswd
echo root':'$ROOTPWD | chpasswd
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
/etc/NX/nxserver --startup
tail -f /usr/NX/var/log/nxserver.log
