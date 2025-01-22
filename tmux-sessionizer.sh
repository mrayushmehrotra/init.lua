#!/bin/bash

# Use fzf to select a directory
selected=$(find ~/codes ~/learn -mindepth 1 -maxdepth 1 -type d 2>/dev/null | fzf)

# Check if a directory was selected
if [ -n "$selected" ]; then
    # Extract the folder name (basename of the selected directory)
    folder_name=$(basename "$selected")

    # Check if the tmux session already exists
    tmux has-session -t "$folder_name" 2>/dev/null

    # If the session does not exist, create it and attach
    if [ $? != 0 ]; then
        # Create a new tmux session with the folder name and attach to it
        tmux new-session -s "$folder_name" -c "$selected" -d
        tmux attach-session -t "$folder_name"
    fi

    # Attach to the tmux session
else
    echo "No directory selected."
fi
