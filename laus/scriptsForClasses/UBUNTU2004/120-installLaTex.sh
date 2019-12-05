#! /bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

# LaTeX with editors
apt-get -y install texstudio texmaker texlive texlive-lang-german texlive-latex-extra texlive-latex-recommended
