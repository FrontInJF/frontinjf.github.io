#!/bin/bash
rm -rf out || exit 0;
echo "Fazendo o build..."
( cd src/site
  git init
  git config --global user.email "lesley.andrez@gmail.com"
  git config --global user.name "lesleyandrez"
  git add .
  git commit -m "Deployed to Github Pages"
  git push --force --quiet "https://lesleyandrez:${GH_TOKEN}@github.com/FrontInJF/frontinjf.github.io.git" master:gh-pages
)
