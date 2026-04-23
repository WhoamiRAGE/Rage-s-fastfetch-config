#!/bin/bash

set -e

echo "⚡ Installing Rage's Fastfetch config..."

CONFIG_DIR="$HOME/.config/fastfetch"
REPO_URL="https://github.com/WhoamiRAGE/Rage-s-fastfetch-config.git"


mkdir -p "$CONFIG_DIR"


TMP_DIR=$(mktemp -d)


git clone "$REPO_URL" "$TMP_DIR"


cp "$TMP_DIR/fastfetch/config.jsonc" "$CONFIG_DIR/"

echo "✅ Installation complete!"
echo "Run: fastfetch"
