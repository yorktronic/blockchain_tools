#/bin/bash

i="0"
e="953428"

echo "[" >> dash_nethash.txt

while [ $i -le $e ]
do
    x="./dash-cli getnetworkhashps 1 $i"
    y="./dash-cli getnetworkhashps -1 $i"
    echo -n "{\"$i\":" >> dash_nethash.txt
    echo -n "{" >> dash_nethash.txt
    echo -n "\"block_nethash\": $(eval $x), \"average_nethash\": $(eval $y)" >> dash_nethash.txt
    echo -n "}}" >> dash_nethash.txt
    if [ $i != $e ]
    then
        echo "," >> dash_nethash.txt
    fi
    i=$[$i+1]
done

echo -n "]" >> dash_nethash.txt