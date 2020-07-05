#!/bin/bash -x

echo "WELCOME EMPLOYEE"

HOUR=8
WAGE=20
DAILYWAGE=0

dailywage(){
        DAILYWAGE=$(($WAGE * $HOUR))
        echo "Daily Employee Wage is= $DAILYWAGE"
}

attendance(){
	R=$((RANDOM % 2))
	if [ $R -eq 1 ]
		then
			echo "Employee is Present"
			dailywage
		else
			echo "Employee is Absent"
	fi
}
attendance

