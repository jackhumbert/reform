#!/bin/bash

function build {
  dot -Tsvg system-diagram.dot -o system-diagram.svg
  rsvg-convert -f pdf -o system-diagram.pdf system-diagram.svg
  kramdown system.md >system.html
  
  sed -i 's/width="[^"]*"/width="100%"/' system-diagram.svg
  sed -i 's/height="[^"]*"//' system-diagram.svg
  sed -i 's/"Inter"/"Inter,Roboto,Helvetica,Helvetica Neue,Open Sans,Arial,sans-serif"/g' system-diagram.svg 
}

build

while :
do inotifywait -e modify -r *.dot *.md
  build
done

