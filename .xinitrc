# Screen temperature
#redshift -c $XDG_CONFIG_HOME/redshift.conf &
sct 3600 &

# Input devices
xinput set-prop "ETPS/2 Elantech Touchpad" "libinput Tapping Enabled" 1 &
setxkbmap it &
xbindkeys &

# Xresources and wallpaper
xrdb .Xresources &
xwallpaper --zoom $HOME/.wallpapers/MountainSkyNight.png &

# Status bar
$HOME/source/scripts/statusbar &

exec openbox
