#!/bin/sh

# clone the repository to the book-output directory
git clone -b gh-pages \
  https://${PMassicotte}@github.com/${TRAVIS_REPO_SLUG}.git \
  book-output

cd book-output
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book"
git push origin gh-pages
