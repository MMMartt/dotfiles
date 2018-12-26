#!/bin/sh
ls /Applications>applications-list.txt
brew list > brew-list.txt
brew cask list>brew-cask-list.txt
pip2 list>pip2-list.txt
pip3 list>pip3-list.txt
npm -g list --depth=0 | sed "1d" | sed -E "s/^[\`+-]+\s//" | sed -E "s/@(.*)$//">npm-list.txt
