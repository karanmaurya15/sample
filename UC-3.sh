#!/bin/bash -x
  isPartTime=1
   isFullTime=2
   empRatePerHr=500
   randomcheck=$((RANDOM%3))

if [ $isPartTime -eq  $randomcheck ]
then
   empHrs=5

elif [ $isFullTime -eq $randomcheck ]
then
      empHrs=10
else
      empHrs=1
fi
   salary=$(($empHrs*$empRatePerHr))
 echo $salary

