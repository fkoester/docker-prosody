#!/bin/bash
set -e

if [[ "$1" != "prosody" ]]; then
    exec prosodyctl $*
    exit 0;
fi

/usr/local/bin/create_dhparam.sh

exec "$@"
