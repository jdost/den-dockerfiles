#!/usr/bin/env bash

set -euo pipefail

CONFIG_DIR=$HOME/.config/telegram
CONTAINER_NAME=telegram
CONTAINER_IMAGE=jdost/app:telegram

[[ ! -d $CONFIG_DIR ]] && mkdir -p $CONFIG_DIR

if [[ -z "$(docker ps -a --filter name=$CONTAINER_NAME --quiet)" ]]; then
   echo "Runtime container doesn't exist, creating..."

   docker create \
      --interactive \
      --tty \
      --env DISPLAY=$DISPLAY \
      --volume /tmp/.X11-unix:/tmp/.X11-unix \
      --volume $HOME/.Xauthority:/home/telegram/.Xauthority \
      --hostname $(hostname) \
      --volume $CONFIG_DIR:/config \
      --name $CONTAINER_NAME \
      $CONTAINER_IMAGE &>/dev/null
fi

exec docker start --attach --interactive $CONTAINER_NAME
