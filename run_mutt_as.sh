#!/usr/bin/env bash

PROFILE=${1:-"gmail"}
USER=${2:-"amnesia"}

export TORSOCKS_LOG_LEVEL=5
export TORSOCKS_LOG_FILE_PATH=/home/amnesia/torsocks.log

ulimit -c unlimited

su -s /bin/bash -c "torsocks mutt -F .muttrc-${PROFILE}" $USER
