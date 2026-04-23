#!/bin/bash

set -e

echo "⚡ Installing Rage's Fastfetch config..."

CONFIG_DIR="$HOME/.config/fastfetch"
TMP_DIR=$(mktemp -d)


if ! command -v fastfetch &> /dev/null; then
    echo "❌ fastfetch is not installed. Please install it first."
    exit 1
fi


mkdir -p "$CONFIG_DIR"


if [ -f "$CONFIG_DIR/config.jsonc" ]; then
    echo "📦 Backing up existing config..."
    mv "$CONFIG_DIR/config.jsonc" "$CONFIG_DIR/config.jsonc.bak"
fi


git clone --depth=1 https://github.com/WhoamiRAGE/Rage-s-fastfetch-config.git "$TMP_DIR"


cp "$TMP_DIR/fastfetch/config.jsonc" "$CONFIG_DIR/"


rm -rf "$TMP_DIR"

echo "✅ Installation complete!"
echo "Run: fastfetch"
