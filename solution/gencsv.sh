#!/bin/bash

RANDOM=$$
j=0
for i in `seq 10`;
do
echo "$j, $RANDOM" >> inputFile
j=$((j+1))
done
chmod 744 inputFile
