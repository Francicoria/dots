#!/bin/sh
DOTSFOLDER="$HOME/source/dotfiles"
REFSCRIPT="$HOME/source/scripts/shell/refreshdots.sh"
OBTHEME="$HOME/.themes/BlackWhite-OB"

rm -r $DOTSFOLDER/.config/
rm -r $DOTSFOLDER/.local/share/
rm -r $DOTSFOLDER/BlackWhite-OB/
rm $DOTSFOLDER/.Xresources
rm $DOTSFOLDER/.mkshrc
rm $DOTSFOLDER/.profile
rm $DOTSFOLDER/.xinitrc
rm $DOTSFOLDER/.xbindkeysrc
rm $DOTSFOLDER/refreshdots.sh
printf "Removed all of the dotfiles.\n\n"

mkdir $DOTSFOLDER/.config/
cp -r $HOME/.config/alacritty/  $DOTSFOLDER/.config/
cp -r "$HOME/.config/gtk-3.0/"  $DOTSFOLDER/.config/
cp -r $HOME/.config/fontconfig/ $DOTSFOLDER/.config/
cp -r $HOME/.config/nvim/       $DOTSFOLDER/.config/
cp -r $HOME/.config/zathura/    $DOTSFOLDER/.config/
cp -r $HOME/.config/snes9x/     $DOTSFOLDER/.config/
cp -r $HOME/.config/mpv/        $DOTSFOLDER/.config/
cp -r $HOME/.config/tint2/      $DOTSFOLDER/.config/
printf "Copied things from .config folder\n"

mkdir -p $DOTSFOLDER/.local/share/
mkdir $DOTSFOLDER/.local/share/PolyMC/
cp $HOME/.local/share/PolyMC/polymc.cfg $DOTSFOLDER/.local/share/PolyMC/
printf "Copied things from .local/share folder\n"

cp -r $OBTHEME/ $DOTSFOLDER/
printf "Copied the Openbox theme folder\n"

cp $HOME/.Xresources $DOTSFOLDER/
printf "Copied the Xresources file\n"

cp "$HOME/.gtkrc-2.0" $DOTSFOLDER/
printf "Copied gtk2 config file\n"

cp $HOME/.mkshrc $DOTSFOLDER/
printf "Copied the mkshrc file\n"

cp $HOME/.profile $DOTSFOLDER/
printf "Copied .profile file\n"

cp $HOME/.xinitrc $DOTSFOLDER/
printf "Copied the xinitrc file\n"

cp $HOME/.xbindkeysrc $DOTSFOLDER/
printf "Copied the xbindkeysrc file\n"

cp $REFSCRIPT $DOTSFOLDER/
printf "Copied the refreshdots.sh script\n"

printf "Done copying!\n"
