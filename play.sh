#!/bin/bash

echo "HOLA"

PLAYLIST_COMMAND='find mp3 -type f -name "*.mp3" | shuf | while read f; do ffplay -autoexit -- "$f"; done'
echo "playing \"$PLAYLIST_COMMAND\""
$(eval "$PLAYLIST_COMMAND")

