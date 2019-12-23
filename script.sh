#!/bin/bash

#a=$(pwd)
cd ..
b=$(ls -l  . | grep ^d | wc -l)
#echo $b
for ((i=1; i<=$b; i++))
{ 
c=$(ls | head -$i | tail -1)
#echo $c
if [[ "$c" == "d2" ]]
then
echo "+"
else
echo "-"
find ./$c/*  -amin -20 | xargs rm -rf
fi
} 
#cd $a
