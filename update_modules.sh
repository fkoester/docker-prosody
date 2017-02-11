#! /bin/bash

MODULES_DIRECTORY=/usr/lib/prosody/modules

if [ ! -d "${MODULES_DIRECTORY}/.hg" ]; then
  /init_modules.sh
else
  cd ${MODULES_DIRECTORY}
  hg pull --update''
fi
