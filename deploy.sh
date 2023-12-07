#!/usr/bin/env sh

# enable throw error
set -e

# build static pages
npm run build

# enter build
cd build

# publish pages
git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/unitsvc/unitsvc.github.io.git master:gh-pages

# switch origin directory
cd -

# remove build pages
rm -rf ./build
