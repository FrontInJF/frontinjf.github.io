#!/bin/bash
rm -rf out || exit 0;
echo "Fazendo o build..."
( cd src/site
  git init
  git config --global user.email "lesley.andrez@gmail.com"
  git config --global user.name "lesleyandrez"
  git add .
  git commit -m "Deployed to Github Pages"
  echo " - - - "
  echo $GH_REF
  echo " - - - "
  echo $GH_TOKEN
  git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages
)
