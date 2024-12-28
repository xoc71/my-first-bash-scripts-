#!/bin/bash
echo 'Hello, do you like cats? (y/n)'
read -r cats
if [[ $cats == 'y' ]]; then
    echo 'I like cats too'
else
    echo 'Please leave'
fi