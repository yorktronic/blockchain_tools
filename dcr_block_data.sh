#/bin/bash

i="0"

echo -n "[" >> dcr_block_data.txt

while [ $i -lt 282623 ]
do
    x="./dcrctl getblockhash $i"
    y=$(eval $x)
    ./dcrctl getblock $y >> dcr_block_data.txt
    echo "," >> dcr_block_data.txt
    i=$[$i+1]
done

echo -n "]" >> dcr_block_data.txt