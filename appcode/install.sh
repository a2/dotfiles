#!/bin/sh
#
# AppCode 3
#
# Symlinks AppCode 3 settings on Darwin 

# Check for Darwin
if [ "$(uname -s)" == "Darwin" ]
then
  echo "  Symlinking AppCode preferences"

  cd ~/Library/Preferences/
  rm -rf appCode30
  ln -s ~/.dotfiles/appcode appCode30
fi

exit 0
