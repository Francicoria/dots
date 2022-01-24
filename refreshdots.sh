#!/bin/sh
rm -rf ~/source/dots/.config/
cp -r ~/.config/ ~/source/dots/
printf "Copying .config folder\n"
rm -rf ~/source/dots/.wallpapers/
cp -r ~/.wallpapers/ ~/source/dots/
printf "Copying the wallpapers folder\n"
rm -f  ~/source/dots/.Xresources
cp ~/.Xresources ~/source/dots/
printf "Copying the Xresources file\n"
rm -f ~/source/dots/.bashrc
cp ~/.bashrc ~/source/dots/
printf "Copying the bashrc file\n"
rm -f ~/source/dots/.xinitrc
cp ~/.xinitrc ~/source/dots/
printf "Copying the xinitrc file\n"
rm -f ~/source/dots/.xbindkeysrc
cp ~/.xbindkeysrc ~/source/dots/
printf "Copying the xbindkeysrc file\n"
rm -f ~/source/refreshdots.sh
cp ~/refreshdots.sh ~/source/dots/
printf "Copying this script\n"
printf "Done copying!\n"
cd ~/source/dots/
printf "Changing to dots directory...\n"
git add .
printf "Adding all of the files...\n"
git commit -m "Dots refreshed!"
printf "Committing...\n"
git push
printf "Pushing commits to main branch...\n"
printf "All done!\n\n"
