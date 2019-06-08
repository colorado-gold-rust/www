#!/usr/bin/env bash
ZOLA_VERSION="0.5.1"
BASE_URL="https://github.com/getzola/zola/releases/download"
FILE=zola-v$ZOLA_VERSION-x86_64-unknown-linux-gnu.tar.gz
curl -s -L $BASE_URL/v$ZOLA_VERSION/$FILE | \
tar xzf - -C ./
./zola build -u $DEPLOY_URL -o public/ #&& \
