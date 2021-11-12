#!/bin/bash
read -p 'please enter two number :' a b
printf "choose one oparation \n 1 - sum + \n 2 - multiple * \n 3 - minus - \n 4 - divide \\ \n "
read  oparation
case $oparation in
    1)
    let sum=a+b
    ;;
    2)
    let sum=a*b
    ;;
    3)
    let sum=a-b 
    ;;
    4)
    let sum=a/b 
    ;;
esac    
echo $sum