#!/bin/bash

# remove Duplex as Default for Queue sw
lpoptions -p securePrint_sw -o Duplex=None

# remove Duplex as Default for Queue Color
lpoptions -p securePrint_color -o Duplex=None

