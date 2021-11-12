#!/bin/bash
printf "this is endless program when you enter 1 continue and when -1 end\n please enter number 1 to start or continue \n number  -1 for end " 
read -p "" flag
while [ "$flag" != -1 ];
do
read -p "please enter number : " number
arr=()
    while [ "$number" -gt 0 ];
        do
        let last=$number%10
        number=$((number/10))
        arr+=($last)
        done
    let sum=0
    for i in ${!arr[@]};
        do
        printf ${arr[$i]}        
        let sum+=${arr[i]}
        done 
    echo ""
    echo "sum of digits : " $sum
    printf  "please enter number 1 to  start or continue \n -1 for end " 
    read flag
done               
