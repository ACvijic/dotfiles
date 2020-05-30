#!/bin/bash
############################
# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles              # dotfiles directory
olddir=~/dotfiles_old       # old dotfiles backup directory
files="bashrc gitconfig"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# configuring VSCode if installed
echo "Checking if VSCode is installed"
code=/snap/bin/code
if test -f "$code"; then
    echo "VSCode is installed, running configure script"
    bash $dir/configure_code.sh
    echo "...done"
else
    echo "VSCode not installed"
fi
