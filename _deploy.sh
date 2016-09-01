#!/bin/sh

git add .
git commit -m "update the book"
git push

# clone the repository to the book-output directory
git clone -b gh-pages \
  git@github.com:PMassicotte/dom-optic.git \
  book-output

cd book-output
cp -r ../_book/* ./
git add --all *
git commit -m "update the book"
git push origin gh-pages
