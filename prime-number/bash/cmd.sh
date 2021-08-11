#!/bin/bash

primeNumberCount=100
if [[ $1 -gt 0 ]]
then
    primeNumberCount=$1;
fi

number=0
while [ $primeNumberCount -gt 0 ]
do
    ((number += 1))

    j=0
    for i in $(seq $number)
    do
        if [[ $(( number % i )) == 0 ]]
        then
            ((j += 1))
        fi
    done

    if [[ $j == 2 ]]
    then
        ((primeNumberCount -= 1))
    fi
done

printf "The latest prime number: $number\n"
