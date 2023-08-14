#!/bin/bash
echo "Setting up alacritty"
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
BINARY="alacritty"
HOSTNAME="`hostname -s`"
if [ $(type -P "$BINARY") ]; then
  if [ -f ~/.config/alacritty.yml ]; then
    echo "Alacritty config already found ~/.config/alacritty.toml"
  else
    echo "Installing alacritty config to ~/.config/alacritty.toml"
    ln -s $SCRIPT_DIR/.config/alacritty.toml ~/.config/alacritty.toml
    ln -s $SCRIPT_DIR/.config/alacritty.local-$HOSTNAME.toml ~/.config/alacritty.local-$HOSTNAME.toml
    ln -s $SCRIPT_DIR/.config/alacritty.local-$HOSTNAME.toml ~/.config/alacritty.local.toml
  fi
else
  echo "Alacritty not installed. Executable: $BINARY"
fi
