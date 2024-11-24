#!/bin/bash
# (c) J~Net 2024
# Convert string to Base64
#
# ./Text-to-Base64.sh "Visit jnet.djaufiefexx6vsivc7auwithqdcbmjoftspe7kleg3ivuauk6yrmkkyd.onion"
#
#

input="$1"

if [ -z "$input" ]; then
  read -p "Enter text to encode in Base64: " input
fi

echo -n "$input" | base64
echo ""

