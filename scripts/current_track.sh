#!/usr/bin/env bash

CURRENT_TRACK_STR=$(osascript <<EOF
tell application "iTunes"
  return name of current track & " - " & artist of current track
end tell
EOF)

echo $CURRENT_TRACK_STR
