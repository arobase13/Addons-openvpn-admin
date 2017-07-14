#!/bin/bash
cert="cat /root/ca.crt"
echo \<ca\> >> /root/android/client.ovpn
$cert >> /root/android/client.ovpn
echo \</ca\> >> /root/android/client.ovpn
echo \<tls-auth\> >> /root/android/client.ovpn
key="cat /root/ta.key"
$key >> /root/android/client.ovpn
echo \</tls-auth\> >> /root/android/client.ovpn
exit 0
