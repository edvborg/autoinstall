#! /bin/bash

# https://help.ubuntu.com/community/LDAPClientAuthentication
# https://help.ubuntu.com/13.10/serverguide/openldap-server.html
# has to be one line
DEBIAN_FRONTEND=noninteractive apt-get -y -q install ldap-auth-client nscd libpam-cracklib

# Nscd is a daemon that provides a cache for the most common name service requests
# pam_cracklib.so <= needed for passwordchange!!


# copy correct ldap.conf - file with cn=ldapread,dc=app,dc=net to /etc
mv -v /etc/ldap.conf 		/etc/ldap.conf.original
cp -v files/ldap.conf 		/etc/

# Set Right Parameters in /etc/nsswitch.conf
# passwd:         files ldap
# group:          files ldap
# shadow:         files ldap
# hosts:          files dns [NOTFOUND=return] mdns4_minimal mdns4
mv -v /etc/nsswitch.conf 	/etc/nsswitch.conf.original
cp -v files/nsswitch.conf	/etc/

