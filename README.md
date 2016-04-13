# dotfiles

## Description
Git repo used to stored my different config files. 

## Pre-requisites
You need GNU stow, which is available on most popular distributions

`sudo apt-get install stow` for Ubuntu

`sudo pacman -S stow` for Archlinux

## How to use dotfiles with GNU stow

+ Clone the repo in your home folder
`git clone https://github.com/patoupatou/dotfiles`

+ Move to the git repo
`cd dotfiles`

+ Use gnu stow to symlink the config you want!
`stow vim`

This will symlink the ~/.vimrc with the one in your dotfiles repo. If you modify the ~/.vimrc, there will be changes to the git repo, which you can then stage and commit.

By default stow symlinks to the grandparent folder of the location of the config files. But you can use the -t option to specify another target folder. 

`stow vim -t ~`

## link.sh script

If you have stow installed, you can use the link.sh script and follow the instructions to choose which configs you want to symlink.

## TODO/FIXME/Possible enhancements

* Add an option to symlink everything (probably pressing enter)
* Have different branches for different versions of a file? i.e different .vimrc for different dev environments...
