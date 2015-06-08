#! /bin/bash

# create Matura User 
useradd -u 1001 -g 100 -G nopasswdlogin -c matura -b /home -s /bin/bash -m -N matura

# for writing to arduino board user has to be in group dialout
usermod -aG dialout matura
