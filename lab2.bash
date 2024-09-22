#!/bin/bash


ip=$1


IFS='.' read -r -a octets <<< "$ip"

printf "%08d.%08d.%08d.%08d\n" \
  $(echo "obase=2; ${octets[0]}" | bc) \
  $(echo "obase=2; ${octets[1]}" | bc) \
  $(echo "obase=2; ${octets[2]}" | bc) \
  $(echo "obase=2; ${octets[3]}" | bc)
