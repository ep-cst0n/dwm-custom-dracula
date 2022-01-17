#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/Xresources
sysmodmap=/etc/X11/xinit/Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
/home/boi/.autostart.sh 
/home/boi/dwm-bar/dwm_bar.sh &

feh --bg-fill ~/wallpapers/0279.jpg &
xrandr --output Virtual1 --mode 1920x1080 &
#dwmstatus 2>&1 >/dev/null &
exec dwm

#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session dwm
#picom -f --config /home/boi/.config/picom/picom.conf

while true; do
    # Log stderror to a file
    #dwm 2> ~/.dwm.log
    # No error logging
    dwm >/dev/null 2>&1
done
