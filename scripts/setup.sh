#!/usr/bin/env bash
set -e

# Retrieve the latest release from Zola GitHub's API
ZOLA_URL=$(curl -sS https://api.github.com/repos/getzola/zola/releases | jq -r ".[0].assets[] | select(.name | test(\"x86_64-unknown-linux-gnu\")) | .browser_download_url")

echo "Downloading ${ZOLA_URL}..."

# Install Zola
curl -sSL $ZOLA_URL | tar -xzf - -C $HOME/bin
