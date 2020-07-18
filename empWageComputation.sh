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
monthlyWage=$(( $dailywage*20 ))
echo "Monthly wage $monthlyWage"

hours=0
day=1
while [ $day -le 20 ] || [ $hours -le 100 ]
do
	attendance=$(( RANDOM%2 ))
	if [ $attendance -eq 1 ]
	then
			hours=$(( $hours+$workingHrs ))
	fi
	day=$(( $day+1 ))
done


wageForMonth=$(( $hours*$wagePerHr ))
echo "Wage till the condition of total working hours 100 is reached or 20 days are over"
echo $wageForMonth

function workHrs(){
local totalHours=0
local workingDailyHrs=$1
for day in {0..19}
do
   attendance=$(( RANDOM%2 ))
   if [ $attendance -eq 1 ]
   then
         totalHours=$(( $totalHours+$workingDailyHrs ))
   fi
done
echo $totalHours
}

totalWorkHrs=$(workHrs $workingHrs)
echo "Total working hours for the month are $totalWorkHrs "
