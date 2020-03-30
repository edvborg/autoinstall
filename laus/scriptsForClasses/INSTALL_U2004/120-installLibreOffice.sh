#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## LibreOffice full Package
## LibreOffice German Languagepackage
## LibreOffice java connection needed e.g. language-tool
## LibreOffice Englisch-GB, German-AT, France, Italian, Spain Dictionarys
## Hyphenation & Thesaurus
apt-get -y install libreoffice libreoffice-l10n-de libreoffice-java-common hunspell hunspell-de-at hunspell-en-gb hunspell-fr hunspell-it hunspell-es hyphen-de mythes-de

