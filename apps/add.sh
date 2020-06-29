#!/usr/bin/env bash

set -euo pipefail

APP=${1:-}
APP_FILE="$PWD/apps/$APP"

if [[ -z "$APP" ]]; then
   echo "No app specified..."
   exit 1
fi

if [[ -e "$APP_FILE.desktop" && ! -e "$HOME/.local/share/applications/$APP.desktop" ]]; then
   echo "Adding desktop entry for $APP..."
   ln -s $APP_FILE.desktop $HOME/.local/share/applications/$APP.desktop
fi

if [[ -e "$APP_FILE.sh" && ! -e "$HOME/.local/bin/$APP" ]]; then
   echo "Adding executable wrapper for $APP to path..."
   ln -s $APP_FILE.sh $HOME/.local/bin/$APP
fi
