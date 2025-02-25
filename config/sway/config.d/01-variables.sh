set $mod Mod4

set $left h
set $down j
set $up k
set $right l

set $term kitty --title kitty

set $menu dmenu_path | wmenu | xargs swaymsg exec --

# set $sov_on nop
# set $sov_off nop

set $sov_on exec echo 1 >> /run/user/1000/sov.sock
set $sov_off exec echo 0 >> /run/user/1000/sov.sock

