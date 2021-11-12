#!/bin/bash
read -p 'enter two number :' a b
if  [[ $a ]] && [ $a -eq $a 2>/dev/null ]
then
    echo ""
else
     echo "$a is not an integer or not defined"
     exit 
fi
if  [[ $b ]] && [ $b -eq $b 2>/dev/null ]
then
    echo ""
else
     echo "$b is not an integer or not defined"
     exit 
fi
let sum=a+b
echo 'sum of two number is: ' $sum
if [ $a -gt $b ]
 then
    echo "$a greater than $b"
else
    echo "$b greater than $a"
fi        
