#!/usr/bin/env bash

set -eux

# "yarn tauri build" 実行時に Windows 用の実行ファイル (.exe) を作成できるようにする
echo "=== Install NSIS (for Windows installer bundling) ==="
sudo apt-get update
sudo apt-get install -y nsis

echo "=== Install LLVM & LLD Linker ==="
sudo apt-get install -y lld llvm clang

echo "=== Add Rust target for Windows MSVC ==="
rustup target add x86_64-pc-windows-msvc

echo "=== Install cargo-xwin ==="
cargo install --locked cargo-xwin

echo "=== Setup finished ==="
