picom --config /home/boi/.config/picom/picom.conf &
#/home/boi/dwm-bar/dwm_bar.sh &
/home/boi/.config/dwm-bar/dwm_bar.sh &
feh --bg-fill ~/wallpapers/0279.jpg
while true; do
    # Log stderror to a file
    #dwm 2> ~/.dwm.log
    # No error logging
    dwm >/dev/null 2>&1
done

