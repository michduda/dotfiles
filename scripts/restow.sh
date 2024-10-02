#!/bin/bash
stowpath="/home/mduda/sources/dotfiles"
targetpath="/home/mduda/.config"

stow -v -d $stowpath -t $targetpath .config $@
