#!/bin/bash

data= free --giga | grep Mem
echo "date is $data"
for x in $data; do
    echo "res: $x"
done