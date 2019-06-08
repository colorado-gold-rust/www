#!/usr/bin/env bash
echo "Building with $(zola --version)"
zola build -u $DEPLOY_URL -o public/ && \
zola build -u http://127.0.0.1:7878 -o preview/ && \
npm ci && npm run generate-pdf
