#!/bin/bash

#apt-get -y update
# edited by Thomas Neuhold 2020-09-07
# Errors:
# adour -> ardour

# quiet installation
export DEBIAN_FRONTEND=noninteractive


## MuseScore: Classical music notationprogramm:
## mixxx: DJ - mixing software
## Ardour: Audio & MIDI sequencer -> edited by Thomas Neuhold
## Hydrogen: Drum machine
## Rosegarden: MIDI - sequencer
## Qtractor: Audio & MIDI sequencer
## LMMS: Audio & MIDI sequencer
## Qsynth amSynth: Synthsizer -> edited by Thomas Neuhold
## jack: jack daemon, jack - gui, jack - keyboard
## a2jmidid: alsa to jack MIDI daemon -> not working on 20.04 Thomas Neuhold
## VMPK: virtual keyboard
## calf-plugins: music studio effects and instruments
## sooperlooper: music loop station
## 
apt-get -y install musescore3 audacity ardour hydrogen rosegarden qtractor lmms qsynth amsynth jackd qjackctl jack-keyboard vmpk calf-plugins sooperlooper

## Multimedia-Codecs
apt-get -y install libmp3lame0 # libk3b6 libk3b6-extracodecs -> edited by Thomas Neuhold
apt-get -y install libavcodec-extra # libavcodec-ffmpeg-extra56 -> edited by Thomas Neuhold
apt-get -y install libxine2 libxine2-ffmpeg
