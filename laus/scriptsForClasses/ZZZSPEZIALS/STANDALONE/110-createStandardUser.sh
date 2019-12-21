#! /bin/bash


useradd -G nopasswdlogin -c user -s /bin/bash -m user

# for writing to arduino board user has to be in group dialout
usermod -aG dialout user
