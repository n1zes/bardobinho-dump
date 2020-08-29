#!/usr/bin/env bash

for file in $(find ./files -type f -not -name "*.*@*")
do
  git add $file | true
  git commit -m "file" | true
  git push | true
done