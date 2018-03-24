FROM archlinux/base

RUN pacman --noconfirm -Sy zsh base base-devel

RUN mkdir -p /etc/zsh/zsh.d/

ADD ./zshrc /etc/zsh/zshrc
ADD ./prompt.zsh /etc/zsh/zsh.d/09-prompt.zsh
ADD ./keymap.zsh /etc/zsh/zsh.d/03-keymap.zsh
# This is an AUR installing helper script
ADD ./aur_install.zs /usr/local/bin/aur_install
RUN chmod +x /usr/local/bin/aur_install

WORKDIR /src
CMD "/bin/zsh"
