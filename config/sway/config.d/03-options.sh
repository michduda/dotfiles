# BORDERS
default_border normal 4
default_floating_border normal 4
titlebar_border_thickness 4
title_align center

# INPUT
mouse_warping output
focus_follows_mouse no

input "type:touchpad" {
  dwt enabled
  tap enabled
  natural_scroll enabled
  middle_emulation disabled
}

input "type:keyboard" {
  xkb_layout "us,sk"
  xkb_numlock enabled
}

# MISC
bar {
    swaybar_command waybar
}

bindswitch --locked lid:off exec kanshictl switch default
bindswitch --locked lid:on exec kanshictl switch toponly

# THEMING
client.focused $active_title_border \
               $active_title_bg     \
               $active_title_fg     \
               $active_child_border \
               $active_child_border \

client.focused_inactive $inactive_title_border \
                        $inactive_title_bg     \
                        $inactive_title_fg     \
                        $inactive_child_border \
                        $inactive_child_border \

client.unfocused $inactive_title_border \
                 $inactive_title_bg     \
                 $inactive_title_fg     \
                 $inactive_child_border \
                 $inactive_child_border \

