#! /bin/bash

groupadd  DomainUsers -g 513

useradd -u 3101 -g 513 -G 112 -c user -b /home -s /bin/bash -m -N user
