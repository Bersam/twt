#!/bin/bash
# I'm a little noobie in bash, Improve this script.
url="http://payment.zconf.ir?now=1";

# Sample: text="bla bla bla bla bla %s bla bla lba";
# %s is content of $url;
text[0]="";
text[1]="";

while :
do
    wget "http://linuxmag.ir/?now=1" -O current -q;
    current=(echo current | xargs md5sum);
    current=(${current// / });
    old=$(echo old | xargs md5sum);
    old=(${old// / });

    if [ "${old}" != "${current}" ]
    then
        t update "درصد پیشرفت: $(cat current)% | همین حالا به مشترکین نشریه‌ی #linuxmagir بپیوندید! http://linuxmag.ir";
    fi
    mv current old
    sleep 345
done

