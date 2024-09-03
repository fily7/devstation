SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
SSH_CONFIG_DIR=$SCRIPT_DIR/../ssh-config
if [ -d "$HOME/.ssh" ]; then
  if [[ ! -d "$SSH_CONFIG_DIR" ]]; then
    mkdir $SSH_CONFIG_DIR
  fi
  cp -r $HOME/.ssh/* $SSH_CONFIG_DIR
fi
