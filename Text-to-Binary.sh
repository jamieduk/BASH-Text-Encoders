#!/bin/bash
# (c) J~Net 2024
#
# Convert text to binary
#
# ./Text-to-Binary.sh "visit jnet.djaufiefexx6vsivc7auwithqdcbmjoftspe7kleg3ivuauk6yrmkkyd.onion"
#
#
#

input="$1"

if [ -z "$input" ]; then
  read -p "Enter text to convert to binary: " input
fi

# Convert each character of the string to binary
echo -n "$input" | perl -lpe '$_=unpack"B*"'

