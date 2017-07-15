#!/bin/bash
apt-get install openvpn apache2 php5-mysql mysql-server php5 nodejs unzip wget sed npm curl
npm install -g bower
ln -s /usr/bin/nodejs /usr/bin/node
git clone https://github.com/Chocobozzz/OpenVPN-Admin openvpn-admin
cd openvpn-admin
./install.sh /var/www/html www-data www-data
systemctl start openvpn@server
apt-get install iptables-persistent
