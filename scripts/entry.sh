if [ -d "/root/ssh-config" ]; then
  cp -r /root/ssh-config/* /root/.ssh/
  chow -R root:root /root/.ssh
fi

echo "$@"
$@
