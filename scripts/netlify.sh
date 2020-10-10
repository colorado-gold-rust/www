#!/usr/bin/env bash

SITE_URL=${BASE_URL:=https://www.cogoldrust.com}
bash ./setup.sh && $HOME/bin/zola build -u $SITE_URL -o public/
