#!/bin/sh

# read stdin into buffer
buf=$(cat)

# encode buffer to base64
buf64=$(printf "%s" "$buf" | base64 | tr -d '\n')

# send OSC 52 escape sequence
printf "\033]52;c;%s\a" "$buf64"

