#!/usr/bin/env bash

current_track=$(osascript <<EOF
tell application "iTunes"
  return name of current track & " - " & artist of current track
end tell
EOF)

