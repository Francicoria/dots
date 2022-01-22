#!/bin/sh
cp -rf ~/.config/ ~/source/dots/
printf "Copying .config folder\n"
cp -rf ~/.wallpapers/ ~/source/dots/
printf "Copying the wallpapers folder\n"
cp -f ~/.Xresources ~/source/dots/
printf "Copying the Xresources file\n"
cp -f ~/.bashrc ~/source/dots/
printf "Copying the bashrc file\n"
cp -f ~/.xinitrc ~/source/dots/
printf "Copying the xinitrc file\n"
cp -f ~/.xbindkeysrc ~/source/dots/
printf "Copying the xbindkeysrc file\n"
cp -f ~/refreshdots.sh ~/source/dots/
printf "Copying this script\n"
printf "Done!\n"
