#!/usr/bin/env bash

for file in $(find files -type f -name "*.*@*")
do
  original_file=(${file//@/ })
  if [ ! -f "$original_file" ]; then
    bigger_file=$(find files -type f -wholename "$original_file*" | tail -n 1)
    cp $bigger_file $original_file
  fi
  if [ ! -f "$original_file" ]; then
    exit -1
  fi
  echo $file
done