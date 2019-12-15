#!/bin/bash

a=$(pwd)
cd /home/ad/backup/
b=$(ls -l  . | grep ^d | wc -l)
#echo $b
for ((i=1; i<=$b; i++))
{ 
c=$(ls | head -$i | tail -1)
#echo $c
if [[ "$c" == "dont touch" ]]
then
echo "+"
else
echo "-"
find /home/ad/backup/$c/*
find /home/ad/backup/$c/*  -amin -20 | xargs rm -rf
fi
} 
cd $a
