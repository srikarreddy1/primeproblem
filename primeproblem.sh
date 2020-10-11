#!/bin/bash 

   echo "welcome to prime problem"
   function checkprime( ) {
     number=$1
     for (( i=2; i<$number; i++ ))
       do
         if [[ $(($number%$i)) -eq 0 ]]
         then
             flag=1
         fi
       done
       if [[ $flag -eq 0 ]]
       then
         if [[ $count != 100 ]]
         then
           savetoarray
         fi
         checkunitsplace
         checkrange $1
       
       fi
       flag=0
   }

   function savetoarray( ) {
   primesarray[$k]=$i
   count=$(($count+1))
   k=$(($k+1))
   }
   function initialize( ) {
    count=0
    n=0
    counter=0
    flag=0
    k=0
    i=2  
    f=0
    p=0
    while (( $count != 100 ))
    do
    checkprime $i
    i=$((i+1))
    done
   }

   function printreverseorder( ) {
   
   for ((  j=99; j>=0; j-- ))
   do 
   echo "${primesarray[$j]}"
   done
   }
   function printreverseorderunits( ) {
   for ((  j=99; j>=0; j-- ))
   do
   echo "${primesinunit[$j]}"
   done
   }

   #Print 50 alternate primes in reverse order
   function print50primes( ) {
   for (( m=99; m>=0; m=$(($m-2)) ))
   do
   echo "${primesarray[$m]}"
   done
   }

   function main( ) {
   initialize
   printreverseorder
   echo "print 50 alternative primes in reverse order"
   print50primes
   initializeUnits
   printreverseorderunits
   echo "print prime palanidromes between 1 to 200"
   printpalindromes
   }

    #print 100 primes with 1 in units place
   
   function checkunitsplace( ) {
   digit=$(($number%10))
   if [[ $digit -eq 1 ]]
   then
       savetounits
   fi
   }

   function initializeUnits( ) {
   while (( $counter != 100 ))
   do
   checkprime $i
   i=$(($i+1))
   done
   }

   function savetounits( ) {
   primesinunit[$n]=$i
   counter=$(($counter+1))
   n=$(($n+1))
   }
   
   #find palindromes between 1 to 200 that are primes

   function checkrange( ) {
   local number=$1
   if [[ $number -lt 200 ]]
   then
   checkpalindrome $1
   fi
   }

   function checkpalindrome( ) {
   num=$1 
   reversenumber=0
   while (( $num != 0 ))
   do
   digit=$(( $num%10 ))

   reversenumber=$((($reversenumber*10)+$digit))
   num=$(( $num/10 ))
   done
   if [[ $reversenumber -eq $1 ]]
   then
      storethepalindrome $1
   fi
   }

   function storethepalindrome( ) {
   palindrome[$f]=$1
   f=$(($f+1))
   }

   function printpalindromes( ) {
   #arraylength
   arraylength=`echo "${#palindrome[@]}"`
   for (( i=0; i<=arraylength; i++))
   do
   echo "${palindrome[$i]}"
   done
   }
   main
