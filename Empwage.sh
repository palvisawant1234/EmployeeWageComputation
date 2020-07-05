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
        echo -n "Full time Wage is= $DAILYWAGE   "
}

partwage(){
	TIME=$(($HOUR / 2))
	PARTTIME=$(($TIME * $WAGE))
	echo -n "Part time Wage= $PARTTIME   "
}

getworkhours(){
hour=$1
TOTALHOURS=$(($TOTALHOURS+$hour))
echo "     Total hours=$TOTALHOURS   "
}

gettotalwage(){
wage=$1
TOTALWAGE=$(($wage+$TOTALWAGE))
echo -n "Total wage=$TOTALWAGE"
}

attendance(){
	R=$((RANDOM % 2))
	if [ $R -eq 1 ]
		then
			RD=$((RANDOM % 2))
		        if [ $RD -eq 1 ]
                	then
                        	dailywage
				gettotalwage $DAILYWAGE
				getworkhours $HOUR
                	else
                        	partwage
				gettotalwage $PARTTIME
				getworkhours $(($HOUR / 2)) 
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
	dailywage[$day]=$TOTALWAGE
	day=$(($day+1))
done

echo Stored daily wages are:
echo "${dailywage[*]}"
echo "Total working hours are=$TOTALHOURS"
echo "Total wage of a month=$TOTALWAGE"

