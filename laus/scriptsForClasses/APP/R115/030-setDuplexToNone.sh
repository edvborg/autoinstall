#!/bin/bash

# remove Duplex as Default for Queue sw
lpoptions -p KonfZi-Kopierer_sw -o Duplex=None

# remove Duplex as Default for Queue Color
lpoptions -p KonfZi-Kopierer_color -o Duplex=None

