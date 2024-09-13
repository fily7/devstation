FROM archlinux:base


WORKDIR /app
# languages
RUN pacman -Sy --needed --noconfirm python python-pip zig go nodejs npm luarocks
# tools
RUN pacman -Sy --needed --noconfirm openssh tmux neovim fish git ripgrep fzf fd eza bat lazygit unzip z
# tmux
RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# posh
RUN mkdir -p /root/bin
RUN curl -s https://ohmyposh.dev/install.sh | bash -s -- -d /root/bin

RUN git config --global --add safe.directory /app

COPY ./.config/ /root/.config/
COPY ./scripts/entry.sh /root/entry.sh

ENTRYPOINT ["sh", "/root/entry.sh"]

CMD ["tail", "-f", "/dev/null"]
