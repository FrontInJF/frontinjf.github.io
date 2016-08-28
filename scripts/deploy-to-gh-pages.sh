#!/bin/bash
rm -rf out || exit 0;
echo "Fazendo o build..."
( cd src/site
  git init
  git config --global user.email "nobody@nobody.org"
  git config --global user.name "Travis CI"
  git add .
  git commit -m "Deployed to Github Pages"
  git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
)
