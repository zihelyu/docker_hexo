#!/bin/sh

app_dir=/usr/src/app

if [ "$(ls -A $app_dir)" ]; then
  echo 'Hexo running'
  else
    echo 'Hexo init'
    hexo init && \
    npm install && \
    npm update
  fi

  hexo server

exec "$@"