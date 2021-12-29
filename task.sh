#!/usr/bin/bash

echo "Enter text"
read text

# count number of characters
TotalCharacters=$(echo -n "$text" |grep -o '[a-z]' | wc -l)


# count number of words
word=$(echo -n "$text" |sed 's/'[0-9]'/ /g' | wc -w)


# Counting Number of total space
space=$(echo -n "$text" |grep -o ' ' | wc -l)



# Counting total digits
digits=$(echo -n "$text" | awk -F '[0-9]' '{print NF-1}')

echo "TotalSpace-$space;TotalCharacters-$TotalCharacters;TotalWords-$word;TotalDigits-$digits"
