export GTK_IM_MODULE="scim"
export QT_IM_MODULE="scim"
export XMODIFIERS="@im=SCIM"
#xsetroot -solid steelblue
feh --bg-scale /home/deadsun/photos/wallpapers/openbsd.jpg &
#xclock -geometry -0+0 -d -strftime '%H:%M %b %d %Y' -update 1 &
/usr/local/bin/scim -d
exec cwm
