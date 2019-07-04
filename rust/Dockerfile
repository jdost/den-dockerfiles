FROM development

ENV MD5_CHECKSUM=e4a1377ff6ec10f37ed30963b1383ff5

RUN curl -o /tmp/rust.sh https://sh.rustup.rs \
   && echo "$MD5_CHECKSUM /tmp/rust.sh" | md5sum -c \
   && bash /tmp/rust.sh -y --no-modify-path \
   && rm /tmp/rust.sh

ADD ./zshrc /etc/zsh/zsh.d/01-rust.zsh
