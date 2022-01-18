xrandr -s 1920x1080

# background
feh --bg-fill ~/.dwm/background/wallhaven-618958.jpg &

picom --config ~/.config/picom/picom.conf &

# status bar
~/.dwm/script/dwm-bar/dwm_bar.sh &
