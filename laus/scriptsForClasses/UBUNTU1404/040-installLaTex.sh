#! /bin/bash

#apt-get -y update

# LaTeX mit Editor - Kile
#sudo apt-add-repository -y http://ppa.launchpad.net/texlive-backports/ppa/ubuntu
#if [ $(lsb_release -r -s) = "12.04" ];
#then
#  add-apt-repository -y ppa:texlive-backports/ppa
#  apt-get update
#fi
apt-get -y install texmaker
apt-get -y install kile
apt-get -y install texlive texlive-lang-german texlive-doc-de texlive-latex-extra 
