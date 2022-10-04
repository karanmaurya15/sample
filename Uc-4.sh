#!/bin/bash -x
 
  isPartTime=1
  isFullTime=2
  empRatePerHr=1000
  randomcheck=$((RANDOM%3))

case $randomcheck in
			$isPartTime )
				empHrs=8
				;;
			$isFullTime )
				empHrs=16
				;;
			*)
				empHrs=0
				;;
esac

salary=$(($empHrs*$empRatePerHr))
 echo $salary

