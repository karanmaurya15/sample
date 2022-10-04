#!/bin/bash -x
 
 isPartTime=1
 isFullTime=2
 empRatePerHr=150
 numOfWorkingDays=20
 totalSalry=0
 
for (( day=1; day<=$numOfWorkingDays; day++ ))
do
    randomcheck=$((RANDOM%3))
    case $randomcheck in
			$isPartTime )
				empHrs=4
				;;
			$isFullTime )
				empHrs=8
				;;
			*)
				empHrs=0
				;;
esac
   salary=$(($empHrs*$empRatePerHr))
   totalsalary=$(($totalSalary+$salary))
done

