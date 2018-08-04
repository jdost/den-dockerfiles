FROM development

RUN pacman --noconfirm -Sy ghc cabal-install stack \
   && mkdir /root/.cabal

ADD ./cabal /root/.cabal/config
ADD ./zshrc /etc/zsh/zsh.d/01-haskell.zsh
