#! /usr/bin/env bash

read -rp "Which version of UUID do you want: " uuidVersion

if [ $uuidVersion == 1 ]; then
    # UUID 1
    echo UUID1
elif [ $uuidVersion == 4 ]; then
    # UUID 4
    echo UUID4

else
    echo Please type in a version of UUID to generate
fi