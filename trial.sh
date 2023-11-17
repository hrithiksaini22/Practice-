#!/bin/bash

check_argument_type() {
  input="$1"

  if [[ "$input" =~ ^[[:alpha:]]$ ]]; then
    echo "$input is a character."
  elif [[ "$input" =~ ^[[:digit:]]$ ]]; then
    echo "$input is a digit."
  elif [[ "$input" =~ ^[^[:alnum:]]$ ]]; then
    echo "$input is a special character."
  else
    echo "$input is a multi-character string."
  fi
}

# Check if an argument is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input>"
  exit 1
fi

check_argument_type "$1"

