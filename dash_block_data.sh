#/bin/bash

i="0"
e="953428"

echo -n "[" >> dash_block_data.txt

while [ $i -le $e ]
do
    x="./dash-cli getblockhash $i"
    y=$(eval $x)
    ./dash-cli getblock $y >> dash_block_data.txt
    if [ $i != $e ]
    then
        echo "," >> dash_block_data.txt
    fi
    i=$[$i+1]
done

echo -n "]" >> dash_block_data.txt