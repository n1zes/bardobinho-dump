#!/usr/bin/env bash

wget \
  --mirror \
  --max-redirect=3 \
  --trust-server-names \
  --page-requisites \
  --random-wait \
  --convert-links \
  --adjust-extension \
  --span-hosts \
  -e robots=off \
  --no-cookies \
  --restrict-file-names=windows \
  --domains=bardobinho.com,www.bardobinho.com,bardobinho.wordpress.com,bardobinho.files.wordpress.com \
  --no-parent \
  bardobinho.com
