 #!/bin/sh
 #
 # User's .xinitrc file

 # Merge custom X resources
 xrdb -merge "${HOME}/.Xresources"

 # Play a startup sound, in the background
 #ogg123 -q "${HOME}/.config/awesome/login.ogg" &

 # Start a terminal emulator in the background
 urxvt -T Terminal &

 # Start the window manager
 exec awesome
