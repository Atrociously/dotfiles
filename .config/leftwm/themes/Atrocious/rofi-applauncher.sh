#!/bin/sh
if [ -z ${SCRIPTPATH+x} ]; then
  SCRIPTPATH="$(cd "$(dirname "$0")" ; pwd -P)"
fi

rofi -no-config -theme $SCRIPTPATH/rofi-launcher.rasi -show drun
