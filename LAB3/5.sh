#!/bin/bash
one(){
    for ((i=1;i<=5;i++))
        do
        for ((j=1;j<=$i;j++))
            do
                printf $i
            done
            printf "\n"
    done            
}
two(){
    for ((i=1;i<=6;i++))
        do
        printf "  "
        if (( $i%2==1))
            then
            printf " "
        fi    
        for ((j=1;j<=(6-$i)/2;j++))
        do
            printf "  "
        done
        for ((j=1;j<=$i;j++))
        do
            printf ". "
        done
        
        printf "\n"
    done
    for ((i=6;i>=1;i--))
        do
        printf "  "
        if (( $i%2==1))
            then
            printf " "
        fi
        for ((j=1;j<=(6-$i)/2;j++))
        do
            printf "  "
        done
        for ((j=$i;j>=1;j--))
        do
            printf ". "
        done
       
        printf "\n"
    done   

}
three(){
       for ((i=1;i<=5;i++))
        do
        for ((j=1;j<=$i;j++))
            do
                if (( $j==$i ))
                then 
                    printf "|"
                else        
                printf "| "
                fi
                
            done
         printf "_\n"
       

    done            
}

read -p "plese enter number beetwen 1 and 3  for draws " number
if (( $number>=1 && $number <=3))
then
    case $number in 
        1)
            one
            ;;
        2)
        two 
        ;;
        3)
        three
        ;;
    esac       

else
 echo "wrong number"
 exit
 fi 