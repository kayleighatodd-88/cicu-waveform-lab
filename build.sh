#!/bin/sh
# Builds teach.html, learn.html and assess.html from src/app.html
cd "$(dirname "$0")"
for v in teach learn assess; do
  sed "s/window.WL_VARIANT='teach';/window.WL_VARIANT='$v';/" src/app.html > "$v.html"
done
