#!/bin/sh
cp ~/Library/Application\ Support/Code/User/keybindings.json .
cp ~/Library/Application\ Support/Code/User/settings.json .
cp -r ~/Library/Application\ Support/Code/User/snippets .
code --list-extensions | xargs -L 1 echo code --install-extension>vscode-list.txt
