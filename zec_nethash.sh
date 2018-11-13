#/bin/bash

i="0"

while [ $i -lt 409944 ]
do
    zcash-cli getnetworksolps 1 $i >> zec_nethash_all.txt
    i=$[$i+1]
done