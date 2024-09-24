FROM archlinux:base


WORKDIR /app
RUN pacman -Sy --needed --noconfirm which make wget htop openssh unzip && \
pacman -Sy --needed --noconfirm python python-pip zig go nodejs npm luarocks && \
pacman -Sy --needed --noconfirm tmux neovim fish git ripgrep fzf fd eza bat lazygit && \
mkdir -p /root/bin
RUN curl -s https://ohmyposh.dev/install.sh | bash -s -- -d /root/bin
RUN git config --global --add safe.directory /app

COPY ./.config/ /root/.config/
COPY ./scripts/entry.sh /root/entry.sh

ENTRYPOINT ["sh", "/root/entry.sh"]

CMD ["tail", "-f", "/dev/null"]
