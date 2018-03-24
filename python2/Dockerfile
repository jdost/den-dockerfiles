FROM development

RUN pacman --noconfirm -Sy python2 python2-pip \
   && ln -s /usr/sbin/python2 /usr/local/bin/python \
   && ln -s /usr/sbin/pip2 /usr/local/bin/pip

ADD ./zshrc /etc/zsh/zsh.d/01-python2.zsh
