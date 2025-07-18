#!/usr/bin/env bash

set -eou pipefail

git clone https://github.com/rust-lang/rust-analyzer.git && cd rust-analyzer
cargo xtask install --server

