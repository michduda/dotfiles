# ACTIVE WINDOWS
set $active_title_fg #ffffff
set $active_title_bg #285577
set $active_title_border #4c7899
set $active_child_border #285577

# INACTIVE WINDOWS (focused_inactive and unfocused)
set $inactive_title_fg #888888
set $inactive_title_bg #222222
set $inactive_title_border #333333
set $inactive_child_border #222222

client.focused $active_title_border \
               $active_title_fg     \
               $active_title_bg     \
               $active_child_border \
               $active_child_border \

client.focused_inactive $inactive_title_border \
                        $inactive_title_fg     \
                        $inactive_title_bg     \
                        $inactive_child_border \
                        $inactive_child_border \

client.unfocused $inactive_title_border \
                 $inactive_title_fg     \
                 $inactive_title_bg     \
                 $inactive_child_border \
                 $inactive_child_border \

