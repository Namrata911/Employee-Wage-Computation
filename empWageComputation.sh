echo "You are Welcome"
attendance=$(( RANDOM%2 ))
if [ $attendance -eq 0 ]
then
	echo "employee is absent"
else
	echo "employee is present"
fi

wagePerHr=20
fulldayHour=8
partTimeHour=4
workingHrs=0
empType=$(( RANDOM%2 )) #0 for full time, 1 for part time

case $empType in
0)
	workingHrs=$fulldayHour
	echo "Full Time employee"
;;
1)
	workingHrs=$partTimeHour
	echo "Part Time employee"
;;
esac

dailywage=$(( $wagePerHr*$workingHrs ))
echo "Daily wage $dailywage"
