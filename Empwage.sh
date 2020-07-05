#!/bin/bash -x

echo "WELCOME EMPLOYEE"

HOUR=8
WAGE=20
DAILYWAGE=0

dailywage(){
        DAILYWAGE=$(($WAGE * $HOUR))
        echo "Daily Employee Wage is= $DAILYWAGE"
}

PARTTIME=0
partwage(){
	TIME=$(($HOUR / 2))
	PARTTIME=$(($TIME * $WAGE))
	echo "Part time Employee Wage is $PARTTIME"
}

attendance(){
	R=$((RANDOM % 2))
	if [ $R -eq 1 ]
		then
			echo "Employee is Present"
			RD=$((RANDOM % 2))
		        if [ $RD -eq 1 ]
                	then
                        	dailywage
                	else
                        	partwage
        		fi
		else
			echo "Employee is Absent"
	fi
}
attendance

