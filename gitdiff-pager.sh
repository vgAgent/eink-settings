#!/bin/sh
# Insert a space after the leading +/- marker in colored git diff output so the
# marker isn't glued to the line content. Leaves +++/---/@@ headers untouched
# (the [^+]/[^-] guards skip lines whose marker is followed by another +/-).
sed -E 's/^((\x1b\[[0-9;]*m)+)\+([^+])/\1+ \3/; s/^((\x1b\[[0-9;]*m)+)-([^-])/\1- \3/' | less -R
