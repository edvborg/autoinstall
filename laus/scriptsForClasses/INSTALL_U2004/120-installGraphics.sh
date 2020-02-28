#!/bin/bash

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## Gimp: pixel grafic
## gthumb: image viewer & simple manipulator
## Inkscape: vector drawing program
## Scribus: DTP
## Krita: creative drawing
## Blender: modelling & rendering software
## OpenScad: for creating solid 3D CAD objects
## RawTherapee: Editor for RAW fotos 
apt-get -y install gimp gthumb inkscape scribus krita blender openscad rawtherapee
