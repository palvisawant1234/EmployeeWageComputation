#!/bin/bash -x

echo "WELCOME EMPLOYEE"

attendance(){
	R=$((RANDOM % 2))
	if [ $R -eq 1 ]
		then
			echo "Employee is Present"
		else
			echo "Employee is Absent"
	fi
}
attendance
