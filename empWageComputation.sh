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
dailywage=$(( $wagePerHr*$fulldayHour ))
echo "Daily wage $dailywage"
