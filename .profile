export PATH="$PATH:$HOME/.scripts"

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x dwm >/dev/null && exec startx
PATH="/usr/sbin:/sbin:/bin:/usr/games:$PATH"
[ ! -s ~/.config/mpd/pid ] && mpd ~/.config/mpd/mpd.conf &>/dev/null
