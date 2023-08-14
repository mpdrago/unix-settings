#!/bin/bash

echo "Setting up git-aware-bash"

if [ -d .bash ]; then
  echo "~/.bash/ already exists"
else
  mkdir ~/.bash
  echo "Cloning.."
  git clone https://github.com/jimeh/git-aware-prompt.git ~/.bash/git-aware-prompt
fi
