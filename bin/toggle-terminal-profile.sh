#!/bin/bash

STATE_FILE="$HOME/.cache/terminal_profile_state"

WIN_ID=$(xdotool getwindowfocus)
WIN_CLASS=$(xprop -id "$WIN_ID" WM_CLASS 2>/dev/null)

# initialize state
if [ ! -f "$STATE_FILE" ]; then
    echo "opaque" > "$STATE_FILE"
fi

STATE=$(cat "$STATE_FILE")

# make sure the window really has focus
xdotool windowfocus --sync "$WIN_ID"
sleep 0.15

# ---- GNOME Terminal ----
if [[ "$WIN_CLASS" == *"Gnome-terminal"* ]]; then
    if [ "$STATE" = "opaque" ]; then
        xdotool key --clearmodifiers Shift+F10 r 1
        echo "transparent" > "$STATE_FILE"
    else
        xdotool key --clearmodifiers Shift+F10 r 2
        echo "opaque" > "$STATE_FILE"
    fi
    exit 0
fi

# ---- Terminator ----
if [[ "$WIN_CLASS" == *"Terminator"* ]]; then
    # Terminator handles the toggle itself
    xdotool key --clearmodifiers Ctrl+u
    exit 0
fi

# ---- Other applications ----
exit 0

