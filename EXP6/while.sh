#!/bin/bash

# Read from file
while read -r line; do
  echo "Line: $line"
done < sample.txt

# Read from user with exit condition
while true; do
  read -p "Enter a number (0 to exit): " n
  if [[ $n -eq 0 ]]; then
    echo "Exiting..."; break
  fi
  echo "You entered: $n"
done