if [ -d "/root/ssh-config" ]; then
  cp -r /root/ssh-config/* /root/.ssh/
fi

# base tools
pacman -Sy --needed --noconfirm which make wget htop openssh unzip
# langs
pacman -Sy --needed --noconfirm python python-pip go nodejs npm luarocks
# dev tools
pacman -Sy --needed --noconfirm neovim git ripgrep fzf fd eza bat lazygit

git config --global user.name $USER_NAME
git config --global user.email $USER_EMAIL

echo "$@"
$@
