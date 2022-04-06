#!/bin/sh
DOTSFOLDER="$HOME/source/dotfiles"
STATUSBAR="$HOME/source/scripts/statusbar"
REFSCRIPT="$HOME/source/scripts/shell/refreshdots.sh"
OBTHEME="$HOME/.themes/BlackWhite-OB"

rm -r $DOTSFOLDER/.config/
rm -r $DOTSFOLDER/BlackWhite-OB/
rm $DOTSFOLDER/.Xresources
rm $DOTSFOLDER/.bashrc
rm $DOTSFOLDER/.profile
rm $DOTSFOLDER/.xinitrc
rm $DOTSFOLDER/.xbindkeysrc
rm $DOTSFOLDER/statusbar
rm $DOTSFOLDER/refreshdots.sh
printf "Removed all of the dotfiles.\n\n"

printf "Now copying fresh dots!\n"

#cp -r $HOME/.config/ $DOTSFOLDER/
#printf "Copied .config folder\n"
mkdir $DOTSFOLDER/.config/
cp -r "$HOME/.config/gtk-3.0/" $DOTSFOLDER/.config/
cp -r $HOME/.config/fontconfig/ $DOTSFOLDER/.config/
cp -r $HOME/.config/nvim/ $DOTSFOLDER/.config/
cp $HOME/.config/redshift.conf $DOTSFOLDER/.config/
cp -r $HOME/.config/zathura/ $DOTSFOLDER/.config/
cp -r $HOME/.config/snes9x/ $DOTSFOLDER/.config/
cp -r $HOME/.config/mpv/ $DOTSFOLDER/.config/
printf "Copied things from .config folder\n"

cp -r $OBTHEME/ $DOTSFOLDER/
printf "Copied the Openbox theme folder\n"

cp $HOME/.Xresources $DOTSFOLDER/
printf "Copied the Xresources file\n"

cp "$HOME/.gtkrc-2.0" $DOTSFOLDER/
printf "Copied gtk2 config file\n"

cp $HOME/.bashrc $DOTSFOLDER/
printf "Copied the bashrc file\n"

cp $HOME/.profile $DOTSFOLDER/
printf "Copied .profile file\n"

cp $HOME/.xinitrc $DOTSFOLDER/
printf "Copied the xinitrc file\n"

cp $HOME/.xbindkeysrc $DOTSFOLDER/
printf "Copied the xbindkeysrc file\n"

cp $STATUSBAR $DOTSFOLDER/
printf "Copied the status bar script\n"

cp $REFSCRIPT $DOTSFOLDER/
printf "Copied the refreshdots.sh script\n"

printf "Done copying!\n"
