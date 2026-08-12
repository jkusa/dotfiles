#!/bin/bash

# Print battery percentage, or nothing if unavailable (e.g. non-macOS, desktop).
command -v pmset >/dev/null 2>&1 || exit 0

pmset -g ps 2>/dev/null | sed -n 's/.*[[:blank:]]+*\(.*%\).*/\1/p'
