#!/bin/bash

# Set url here, result should be in csv format.
url="http://example.com?now=1";

# Sample: text="bla bla bla bla bla %s bla bla lba";
# Use %s for strings and %d for digits.
# You should pass arguments when parsing CSV.

text=()
text[0]="bal bla bla %s bla";
text[1]="%s foo foo foo foo";

count=${#text[@]};

# Get Url, This Url should be in csv format
wget $url -O current -q;

# Get MD5 files,
current_MD5=$(echo current| xargs md5sum);
old_MD5=$(echo old | xargs md5sum);

# Trim
old_MD5=(${old_MD5// / });
current_MD5=(${current_MD5// / });

# Generate a random number to show everytime different text;
rand=$((RANDOM%$count))

# These lines should be changed due your csv generated file
if [ "${old}" != "${current}" ] then
    while read arg1 do
        t update "${text[$rand]}" $arg1;
    done < "current"
fi

mv current old
