#!/bin/sh
BASE_DIR=$(dirname "$0")
PROC_NAME=$(osascript ${BASE_DIR}/applescript/iterm2_getname.scpt)
if [[ "$PROC_NAME" == *"vim"* ]];
then
    echo '\x1b'
    echo ":call SwitchWindow(\"$1\")"
    echo '\r'
else
    osascript "${BASE_DIR}/applescript/iterm2_$1.scpt"
fi
