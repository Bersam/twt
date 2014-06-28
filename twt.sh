#!/bin/bash

# Set url here, result should be in csv format.
url="http://payment.zconf.ir?now=1";

# Sample: text="bla bla bla bla bla %s bla bla lba";
# %s is content of $url;
text[0]="bal bla bla %s bla";
text[1]="%s foo foo foo foo";

wget "http://linuxmag.ir/?now=1" -O current -q;
current=$(echo current| xargs md5sum);
current=(${current// / });
old=$(echo old | xargs md5sum);
old=(${old// / });

#printf $(echo text[0]) $current;
printf $text $current;
#if [ "${old}" != "${current}" ]
#then
#    t update "درصد پیشرفت: $(cat current)% | همین حالا به مشترکین نشریه‌ی #linuxmagir بپیوندید! http://linuxmag.ir";
#fi
mv current old
