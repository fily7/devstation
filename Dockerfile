FROM archlinux:base
ARG USER_NAME=developer
ENV USER_NAME=${USER_NAME}
ARG USER_EMAIL=developer@example.com
ENV USER_EMAIL=${USER_EMAIL}


WORKDIR /app
# languages
RUN pacman -Sy --needed --noconfirm python python-pip zig go nodejs npm luarocks
# tools
RUN pacman -Sy --needed --noconfirm openssh tmux neovim fish git ripgrep fzf fd exa bat lazygit unzip z
# tmux
RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# posh
RUN mkdir -p /root/.local/bin
RUN curl -s https://ohmyposh.dev/install.sh | bash -sh

RUN git config --global user.name "$USER_NAME" && git config --global user.email "$USER_EMAIL" && git config --global --add safe.directory /app

COPY ./.config/ /root/.config/

CMD ["tail", "-f", "/dev/null"]
