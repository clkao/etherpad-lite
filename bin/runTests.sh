#!/bin/sh

hash nodeunit > /dev/null 2>&1 || { 
  echo "You need to install Nodeunit to run the tests!" >&2
  echo "You can install it with npm" >&2
  echo "Run: npm install nodeunit" >&2
  exit 1 
}

if [ -d "../bin" ]; then
  cd "../"
fi

nodeunit tests
