#!/bin/bash
num=0
for i in `echo {1..100}`; do
 elm+="$i "
 num=`expr $i + $num`
done;
echo "first 100 elm $elm and $num"
