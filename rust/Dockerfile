FROM development

RUN curl -o /tmp/rust.sh https://sh.rustup.rs \
   && bash /tmp/rust.sh -y --no-modify-path \
   && rm /tmp/rust.sh

ADD ./zshrc /etc/zsh/zsh.d/01-rust.zsh
