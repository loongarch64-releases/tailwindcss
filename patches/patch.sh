#!/bin/sh

set -eu

SRC=${1}

echo "patching..."

cat << 'EOF' >> "${SRC}/crates/oxide/Cargo.toml"
[lib]
crate-type = ["cdylib", "rlib"]
EOF

echo "done"
