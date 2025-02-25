# Launchers
bindsym $mod+Escape exec swaylock
bindsym $mod+e exec nautilus
bindsym $mod+b exec firefox
bindsym $mod+t exec $term
bindsym $mod+d exec $menu

# Actions
floating_modifier $mod normal
bindsym $mod+q kill
bindsym $mod+Shift+c reload
bindsym $mod+Shift+e exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -B 'Yes, exit sway' 'swaymsg exit'
bindsym $mod+f fullscreen
bindsym $mod+y floating toggle

# Movement
bindsym $mod+$left focus left
bindsym $mod+$down focus down
bindsym $mod+$up focus up
bindsym $mod+$right focus right

bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

bindsym $mod+Shift+$left move left
bindsym $mod+Shift+$down move down
bindsym $mod+Shift+$up move up
bindsym $mod+Shift+$right move right

bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# Workspaces:
bindsym --no-repeat $mod+1 workspace number 1; $sov_on
bindsym --release $mod+1 $sov_off
bindsym --no-repeat $mod+2 workspace number 2; $sov_on
bindsym --release $mod+2 $sov_off
bindsym --no-repeat $mod+3 workspace number 3; $sov_on
bindsym --release $mod+3 $sov_off
bindsym --no-repeat $mod+4 workspace number 4; $sov_on
bindsym --release $mod+4 $sov_off
bindsym --no-repeat $mod+5 workspace number 5; $sov_on
bindsym --release $mod+5 $sov_off

bindsym --no-repeat $mod+Shift+1 move container to workspace number 1; $sov_on
bindsym --release $mod+Shift+1 $sov_off
bindsym --no-repeat $mod+Shift+2 move container to workspace number 2; $sov_on
bindsym --release $mod+Shift+2 $sov_off
bindsym --no-repeat $mod+Shift+3 move container to workspace number 3; $sov_on
bindsym --release $mod+Shift+3 $sov_off
bindsym --no-repeat $mod+Shift+4 move container to workspace number 4; $sov_on
bindsym --release $mod+Shift+4 $sov_off
bindsym --no-repeat $mod+Shift+5 move container to workspace number 5; $sov_on
bindsym --release $mod+Shift+5 $sov_off

bindsym $mod+Ctrl+$down workspace next
bindsym $mod+Ctrl+$up workspace prev

bindsym $mod+Ctrl+Down workspace next
bindsym $mod+Ctrl+Up workspace prev


mode "resize" {
    bindsym $left resize shrink width 20px
    bindsym $down resize grow height 20px
    bindsym $up resize shrink height 20px
    bindsym $right resize grow width 20px

    bindsym Left resize shrink width 20px
    bindsym Down resize grow height 20px
    bindsym Up resize shrink height 20px
    bindsym Right resize grow width 20px

    # Return to default mode
    bindsym Return mode "default"
    bindsym Escape mode "default"
}
bindsym $mod+r mode "resize"

