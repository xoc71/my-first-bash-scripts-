#!/bin/bash

echo "Do you wish to see the coolest thing on earth? (y/n)"
read choice

if [[ $choice == "y" ]]; then 
    echo "Nice!"
    sleep 1
    url="https://cdn.discordapp.com/attachments/1211371991949516832/1322684435115540542/6597.png?ex=6771c55f&is=677073df&hm=8383c42c92ba8f33ab817b7998f045e89fbe80031bd0e810eee0cc07e4d95995"
    echo "Opening URL: $url"
    xdg-open "$url"
else 
    echo "GET OUT!!!!!"
fi

