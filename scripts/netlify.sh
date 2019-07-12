#!/usr/bin/env bash
SITE_BUILD_URL=${BASE_URL:=https://www.cogoldrust.com}
ZOLA_VERSION="0.8.0"
BASE_URL="https://github.com/getzola/zola/releases/download"
FILE=zola-v$ZOLA_VERSION-x86_64-unknown-linux-gnu.tar.gz
curl -s -L $BASE_URL/v$ZOLA_VERSION/$FILE | \
tar xzf - -C ./
echo "Building with base URL $BASE_URL..."
./zola build -u $SITE_BUILD_URL -o public/ #&& \
