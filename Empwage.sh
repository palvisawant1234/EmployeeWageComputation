#!/bin/bash 

echo "WELCOME EMPLOYEE"

HOUR=8
WAGE=20
DAILYWAGE=0
PARTTIME=0
TOTALDAYS=20
TOTALWAGE=0
TOTALHOURS=0
TOTALWORKINGHOUR=100

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
				TOTALHOURS=$(($TOTALHOURS+$HOUR))
                	else
                        	partwage
				TOTALWAGE=$(($PARTTIME+$TOTALWAGE))
				TOTALHOURS=$(($TOTALHOURS+$(($HOUR / 2)) ))
        		fi
		else
			echo "Employee is Absent"
	fi
}

day=1
while [ $(($day<=$TOTALDAYS)) -eq $(($TOTALHOURS<=$TOTALWORKINGHOUR)) ]
do
	echo -n "day $day = "
	attendance
	day=$(($day+1))
done

echo "Total working hours are=$TOTALHOURS"
echo "Total wage of a month=$TOTALWAGE"

