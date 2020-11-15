#!/bin/sh

    NUM_LOCK=$(xset -q | awk '/00:/{print $8}');

    [ "$NUM_LOCK" == "on" ] && echo "$icon On" || echo "$icon Off"