#!/usr/bin/env bash
if ["$TRAVIS_BRANCH" == "master"]
then
  npm run deploy -- --prod
else
  npm run deploy
fi
