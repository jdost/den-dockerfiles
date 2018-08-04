FROM archlinux/base

RUN pacman --noconfirm -Sy zsh base base-devel

RUN mkdir -p /etc/zsh/zsh.d/

ADD ./zshrc /etc/zsh/zshrc
COPY ./*.zsh /etc/zsh/zsh.d/

# This is an AUR installing helper script
ADD ./aur_install.sh /usr/local/bin/aur_install
RUN chmod +x /usr/local/bin/aur_install

WORKDIR /src
CMD "/bin/zsh"
