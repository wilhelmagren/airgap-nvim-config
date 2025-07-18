#!/usr/bin/env bash

set -eou pipefail


NVIM_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
printf "\nDeleting '$NVIM_CONFIG_DIR'... "
rm -rf $NVIM_CONFIG_DIR
printf "OK\n"

