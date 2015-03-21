#!/usr/bin/env bash
set -eu
. "$(dirname "$0")/common.sh"

echo "Unhiding ~/Library folder"
/usr/bin/chflags nohideen ~/Library
