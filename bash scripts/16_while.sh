#!/bin/bash

counter=0 
 
while [ $counter -lt 5]
do 
  echo "The Value is less than Zero"
  counter = $(($counter + 1))
done 

echo 
ehco "##########################"