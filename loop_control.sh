#!/bin/bash

for i in {1..400}
do
    echo Step $i
    if [ $i -eq 4 ];then
        continue
        echo "after continue"
    fi

    if [ $i -eq 8 ];then
        break
        echo "after break"
    fi

    echo -e "ending take \n"
done