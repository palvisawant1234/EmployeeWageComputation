#!/bin/bash 

echo "WELCOME EMPLOYEE"

HOUR=8
WAGE=20
DAILYWAGE=0
PARTTIME=0
TOTALDAYS=20
TOTALWAGE=0

dailywage(){
        DAILYWAGE=$(($WAGE * $HOUR))
        echo "Daily Employee Wage is= $DAILYWAGE"
}

partwage(){
	TIME=$(($HOUR / 2))
	PARTTIME=$(($TIME * $WAGE))
	echo "Part time Employee Wage is $PARTTIME"
}

attendance(){
	R=$((RANDOM % 2))
	if [ $R -eq 1 ]
		then
			RD=$((RANDOM % 2))
		        if [ $RD -eq 1 ]
                	then
                        	dailywage
				TOTALWAGE=$(($DAILYWAGE+$TOTALWAGE))
                	else
                        	partwage
				TOTALWAGE=$(($PARTTIME+$TOTALWAGE))
        		fi
		else
			echo "Employee is Absent"
	fi
}

for ((i=1 ; i<= $TOTALDAYS ;i++))
do
	echo -n "day $i = "
	attendance
done

echo "Total wage of a month=$TOTALWAGE"

