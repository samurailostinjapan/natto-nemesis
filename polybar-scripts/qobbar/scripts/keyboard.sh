#!/bin/sh
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf "⌨ %s" "$(setxkbmap -query | awk '/layout/{print $2}')"
    else
        printf "  %s" "$(setxkbmap -query | awk '/layout/{print $2}')"
    fi
    printf "%s\n" "$SEP2"