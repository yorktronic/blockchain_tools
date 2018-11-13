#/bin/bash
  
i="1"

echo -n "[" >> zec_block_data.txt

while [ $i -lt 409895 ]
do
        zcash-cli getblock $i >> zec_block_data.txt
        echo "," >> zec_block_data.txt
        i=$[$i+1]
done

echo -n "]" >> zec_block_data.txt