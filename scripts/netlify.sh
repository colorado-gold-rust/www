#!/usr/bin/env bash
BASE_URL=${URL:=$DEPLOY_URL}
ZOLA_VERSION="0.5.1"
BASE_URL="https://github.com/getzola/zola/releases/download"
FILE=zola-v$ZOLA_VERSION-x86_64-unknown-linux-gnu.tar.gz
curl -s -L $BASE_URL/v$ZOLA_VERSION/$FILE | \
tar xzf - -C ./
echo "Building with base URL $DEPLOY_URL..."
./zola build -u $BASE_URL -o public/ #&& \
