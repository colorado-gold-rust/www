#!/usr/bin/env bash

SITE_URL=${BASE_URL:=https://www.cogoldrust.com}
zola build -u $SITE_URL -o public/
