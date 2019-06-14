#!/usr/bin/env bash

CURRENT_TRACK_STR=$(osascript <<EOF
if application "iTunes" is running then
  tell application "iTunes"
    if player state is paused then
      set playingState to "▌▌"
    else
      set playingState to "▶"
    end if

    if player state is stopped
      return
    else
      return playingState & " " & name of current track & " - " & artist of current track
    end if
  end tell
end if
EOF)

echo $CURRENT_TRACK_STR
