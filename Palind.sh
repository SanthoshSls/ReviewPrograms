#!/bin/bash -x

read -p "Enter the number: " n

s=0
rev=""
t=$n

while [ $n -gt 0 ]
do
   s=$(( $n % 10 ))
   n=$(( $n / 10 ))
   rev=$( echo ${rev}${s} )
done

if [ $t -eq $rev ]
then
    echo "Number is Palindrome"
else
    echo "Number is not Palindrome"
fi
