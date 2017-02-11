#! /bin/bash

MODULES_DIRECTORY=/usr/lib/prosody/modules

if [ ! -d "${MODULES_DIRECTORY}/.hg" ]; then
  cd /tmp
  hg clone https://hg.prosody.im/prosody-modules/ prosody-modules
  shopt -s dotglob # for considering dot files (turn on dot files)
  cp -r prosody-modules/* ${MODULES_DIRECTORY}/
  shopt -u dotglob # for don't considering dot files (turn off dot files)
fi
