#!/usr/bin/env bash

set -eou pipefail

NVIM_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
rm -rf $NVIM_CONFIG_DIR

