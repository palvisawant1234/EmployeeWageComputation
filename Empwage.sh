#!/bin/bash -x

echo "WELCOME EMPLOYEE"

HOUR=8
WAGE=20
DAILYWAGE=0
PARTTIME=0

attendance(){
	R=$((RANDOM % 2))
	if [ $R -eq 1 ]
		then
			echo "Employee is Present"
		else
			echo "Employee is Absent"
	fi
}

dailywage(){
	DAILYWAGE=$(($WAGE * $HOUR))
	echo "Daily Employee Wage is= $DAILYWAGE"
}

partwage(){
	TIME=$(($HOUR / 2))
	PARTTIME=$(($TIME * $WAGE))
	echo "Part time Employee Wage is $PARTTIME"
}

echo -e "1.Attendance\n2.Daily Wage\n3.Part Time Wage\n4.Exit" 
read ch
case $ch in
	"1")attendance;;
	"2")dailywage;;
	"3")partwage;;
	"4")exit;;
	"*")echo Invalid choice
esac

