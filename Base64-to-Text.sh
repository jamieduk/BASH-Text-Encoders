#!/bin/bash
# (c) J~Net 2024
# Convert Base64 to string
#
# Usage:
# ./Base64-to-Text.sh "VmlzaXQgam5ldC5kamF1ZmllZmV4eDZ2c2l2YzdhdXdpdGhxZGNibWpvZnRzcGU3a2xlZzNpdnVhdWs2eXJta2t5ZC5vbmlvbg=="
#
#

input="$1"

if [ -z "$input" ]; then
  read -p "Enter Base64 string to decode: " input
fi

# Decode Base64 string and handle errors gracefully
if echo "$input" | base64 -d &>/dev/null; then
  echo "$input" | base64 -d
  echo ""
else
  echo "Error: Input is not a valid Base64 string."
fi

