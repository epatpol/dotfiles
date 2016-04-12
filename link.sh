#!/bin/bash
while :
do
    # Get all the directories
    dotfiles=$(find . -maxdepth 1 -not -name "." -not -name ".git" -type d -printf '%P\n')

    # Check if array of directory is empty
    # FIXME haven't figured out yet why an empty array has a size of 1
    if [ ${#dotfiles[@]} -eq 1 ]; then
        echo "There are no dotfiles here!"
    fi

    PS3="Choose which dotfile you want to link: "


    select dotfile in ${dotfiles}
    do
        echo "$dotfile"
        break
    done

    exit 0
done
