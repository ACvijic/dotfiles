#!/bin/bash

dir=~/dotfiles

echo "Installing extensions"
while read line; do code --install-extension "$line";done < $dir/.config/Code/User/extensions.txt
echo "...done"

echo "Copying settings & keybindings"
cp $dir/.config/Code/User/settings.json ~/.config/Code/User/settings.json
cp $dir/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json
echo "...done"