if [ -d "/root/ssh-config" ]; then
  cp -r /root/ssh-config/* /root/.ssh/
fi

git config --global user.name $USER_NAME
git config --global user.email $USER_EMAIL

echo "$@"
$@
