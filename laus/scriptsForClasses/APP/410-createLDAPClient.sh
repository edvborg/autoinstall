#! /bin/bash

# https://help.ubuntu.com/community/LDAPClientAuthentication
# https://help.ubuntu.com/lts/serverguide/openldap-server.html

# has to be one line
DEBIAN_FRONTEND=noninteractive apt-get -y -q install ldap-auth-client nscd libpam-cracklib

# Nscd is a daemon that provides a cache for the most common name service requests
# pam_cracklib.so <= needed for passwordchange!!


# configuration of /etc/ldap.conf is normalli done by:
# dpkg-reconfigure ldap-auth-config  when you install the package ldap-auth-client.deb
# because we skiped the standard configuration we copy our /etc/ldap.conf 
# copy correct ldap.conf - file with security special cn=ldapread,dc=app,dc=net to /etc
# we use ldapread instead admin-user, because ldapread just has read-rights instead all rights.
#
mv -v /etc/ldap.conf 		/etc/ldap.conf.original
cp -v files/ldap.conf 		/etc/

# Set Right Parameters in /etc/nsswitch.conf
# passwd:         files ldap
# group:          files ldap
# shadow:         files ldap

auth-client-config -t nss -p lac_ldap
