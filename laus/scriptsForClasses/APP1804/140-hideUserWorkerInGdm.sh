#!/bin/bash

## mark user "worker" as system-accout like user "gdm"
# [User]
# SystemAccount=true
cp -v /var/lib/AccountsService/users/gdm /var/lib/AccountsService/users/worker
