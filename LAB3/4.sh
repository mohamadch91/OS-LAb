#!/bin/bash
read -p "enter file name " filename
if ! [ -e "$filename" ]
    then
        echo " the file does not exist"
        exit     
else
read -p " enter two lines of file " x y
let counter=1
while read line 
do 
if (( $x <= $counter && $counter <= $y))
then 
    echo $line 
fi

let counter+=1    

done <$filename 
fi   
