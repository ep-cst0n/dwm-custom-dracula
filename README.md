# dwm-custom-dracula
Patched dwm With Dracula Color Scheme 

<img src="https://github.com/ep-cst0n/dwm-custom-dracula/blob/main/2022-01-14_09-42.png?raw=true" />

dwm is an extremely fast, small, and dynamic window manager for X.

# Patch used
dwm-actualfullscreen

dwm-bar-height

dwm-colorbar

dwm-fullgaps

# Requirements
xorg-server

libxinerama

ubuntu-font-family

ttf-font-awesome

xorg-xsetroot

xorg-xinit (Optional)

xorg-xinput (Optional)

xorg-xrandr (Optional)

# Installation
Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dwm (if
necessary as root):

    make clean install


# Running dwm
Add the following line to your .xinitrc to start dwm using startx:

    exec dwm

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec dwm

(This will start dwm on display :1 of the host foo.bar.)

In order to display status info in the bar, you can do something
like this in your .xinitrc:

    while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
    do
    	sleep 1
    done &
    exec dwm


# Configuration
The configuration of dwm is done by creating a custom config.h
and (re)compiling the source code.
