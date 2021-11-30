#!/bin/bash
echo "Setting up alacritty"
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
BINARY="alacritty"
if [ $(type -P "$BINARY") ]; then
  if [ -f ~/.config/alacritty.yml ]; then
    echo "Alacritty config already found ~/.config/alacritty.yml"
  else
    echo "Installing alacritty config to ~/.config/alacritty.yml"
    ln -s $SCRIPT_DIR/.config/alacritty.yml ~/.config/alacritty.yml
  fi
else
  echo "Alacritty not installed. Executable: $BINARY"
fi
