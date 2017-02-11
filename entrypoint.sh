#!/bin/bash
set -e

if [[ "$1" != "prosody" ]]; then
    exec prosodyctl $*
    exit 0;
fi

/create_dhparam.sh
/init_modules.sh

exec "$@"
