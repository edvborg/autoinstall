#!/bin/bash

## set WLAN Parameter here:
######################################################
# WLAN DISPLAY NAME
WLAN_SSID="APP-LAN"
# WLAN UUID NUMBER
WLAN_UUID="1abf7c2a-40e7-4e9a-a8de-8a63bc51644e"
# WLAN PASSWORD IN CLEAR TEXT :-( 
# stored in variable
# WLAN_PASSWORD="your#password#here"
# but will be sourced from secret-WLAN.txt
# and is not uploaded to public git :-)
. files/secret-WLAN.txt

######################################################


LOCAL_WLAN_INTERFACE=$(nmcli device | grep wifi | awk '{ print $1 }')
if [ -z "${LOCAL_WLAN_INTERFACE}" ];
then
	echo "no wifi interface found"
	exit 1
fi
LOCAL_WLAN_MAC="$(cat /sys/class/net/${LOCAL_WLAN_INTERFACE}/address)"
LOCAL_WLAN_CONFIG_DIR="/etc/NetworkManager/system-connections"
LOCAL_WLAN_CONFIG_FILE="${LOCAL_WLAN_CONFIG_DIR}/${WLAN_SSID}"

# write WLAN - CONFIG - FILE
echo "
[connection]
id=${WLAN_SSID}
uuid=${WLAN_UUID}
type=wifi
permissions=

[wifi]
mac-address=${LOCAL_WLAN_MAC}
mac-address-blacklist=
mode=infrastructure
ssid=${WLAN_SSID}

[wifi-security]
auth-alg=open
key-mgmt=wpa-psk
psk=${WLAN_PASSWORD}

[ipv4]
dns-search=
method=auto

[ipv6]
addr-gen-mode=stable-privacy
dns-search=
method=auto
" >> ${LOCAL_WLAN_CONFIG_FILE}

chown root:root ${LOCAL_WLAN_CONFIG_FILE}

chmod 600 ${LOCAL_WLAN_CONFIG_FILE}

