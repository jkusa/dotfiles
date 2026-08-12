#!/bin/bash

# Print " | <timer>" when a pomodoro is running, or nothing at all.
# Kept in a script (not inline in .tmux.conf) because tmux expands $VAR and
# $(...) itself when parsing double-quoted config strings.

f="$HOME/.pomo.txt.tmux"
[ -s "$f" ] || exit 0

printf ' | %s' "$(cat "$f")"
