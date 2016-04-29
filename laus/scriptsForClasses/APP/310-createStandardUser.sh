#! /bin/bash

# add Standard User "user" with primary group 2000 = "Default Users" coming from LDAP
# LDAP - connetion has to be setup frist
# Groupnummer 1000 (=worker) used as dummy - group, because LDAP - connetion dos not exist yet

# for writing to arduino board user has to be in group dialout
useradd --uid 3101 --no-user-group --gid 1000 --groups nopasswdlogin,dialout --comment "user" --base-dir /home --create-home --shell /bin/bash user

