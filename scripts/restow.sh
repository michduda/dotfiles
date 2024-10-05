#!/bin/bash
stowpath="/home/mduda/sources/dotfiles"

stow -v -d $stowpath -t /home/mduda/.config config $@
sudo stow -v -d $stowpath -t /usr/local/bin scripts $@
