#!/bin/bash
echo "Setting up bash"
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [ -f ~/.bash_aliases ]; then
  echo "~/.bash_aliases already exists"
else
  ln -s $SCRIPT_DIR/.bash_aliases ~/.bash_aliases
fi
if [ -f ~/.bash_variables ]; then
  echo "~/.bash_variables already exists"
else
  ln -s $SCRIPT_DIR/.bash_variables ~/.bash_variables
fi 

$SCRIPT_DIR/git_aware_bash.sh
