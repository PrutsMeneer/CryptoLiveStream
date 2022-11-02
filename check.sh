#!/bin/bash
if ! [ -x "$(command -v ffmpeg)" ]; then
  echo 'Error: ffmpeg is not installed.' >&2
  apt install ffmpeg -y
  exit 1
fi