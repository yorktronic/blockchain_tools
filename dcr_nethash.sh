#/bin/bash

i="0"

echo "[" >> dcr_nethash.txt

while [ $i -lt 282623 ]
do
    x="./dcrctl getnetworkhashps 1 $i"
    y="./dcrctl getnetworkhashps 144 $i"
    echo -n "{\"$i\":" >> dcr_nethash.txt
    echo -n "{" >> dcr_nethash.txt
    echo -n "\"block_nethash\": $(eval $x), \"average_nethash\": $(eval $y)" >> dcr_nethash.txt
    echo -n "}}" >> dcr_nethash.txt
    echo "," >> dcr_nethash.txt
    i=$[$i+1]
done

echo -n "]" >> dcr_nethash.txt