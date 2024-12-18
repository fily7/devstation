FROM archlinux:base

WORKDIR /app
RUN pacman -Sy --needed --noconfirm fish tmux

COPY ./.config/ /root/.config/
COPY ./scripts/entry.sh /root/entry.sh

ENTRYPOINT ["sh", "/root/entry.sh"]

CMD ["tail", "-f", "/dev/null"]
