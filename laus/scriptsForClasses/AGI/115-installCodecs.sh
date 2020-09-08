#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

## Multimedia-Codecs
apt-get -y install libmp3lame0 libk3b6 libk3b6-extracodecs
apt-get -y install libavcodec-extra libavcodec-ffmpeg-extra56
apt-get -y install libxine2 libxine2-ffmpeg
apt-get -y update

