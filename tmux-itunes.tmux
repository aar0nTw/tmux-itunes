#!/usr/bin/env bash

CURRENT_TRACK=$(osascript <<EOF
tell application "iTunes"
  return name of current track & " - " & artist of current track
end tell
EOF)

tmux set-option -g current_track "$CURRENT_TRACK"

