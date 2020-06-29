FROM ubuntu:20.04

# Install telegram desktop app
RUN apt-get update \
   && apt-get install -y --no-install-recommends \
      telegram-desktop \
   && rm -rf /var/lib/apt/lists/* \
      /var/cache/apt/* \
      /var/log/* \
      /usr/share/man \
      /usr/share/doc

# Setup the user for running, this user will own the files used in the mounted
#   config directory
ARG UID=1000
ARG GID=1000

RUN groupadd -g $GID telegram \
   && useradd -d /home/telegram -s /bin/bash -m telegram -u $UID -g $GID \
   && mkdir -p /config /home/telegram/.local/share/ \
   && chown -R $UID:$GID /config \
   && chown -R $UID:$GID /home/telegram/.local/share \
   && ln -s /config /home/telegram/.local/share/TelegramDesktop

USER telegram
CMD ["telegram-desktop"]
