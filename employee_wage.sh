#!/bin/bash
if [ $(( $RANDOM % 2 )) -eq 0 ]
then
        echo "employee present"
else
        echo "employee absent"
fi



#!/bin/bash
WAGE=20
hours=8
if [ $(( $RANDOM % 2 )) -eq 0 ]
then
        echo "employewage" $(( WAGE * hours ))
else
        echo "employee absent"
fi



#!/bin/bash
WAGE=20
fulltime=8
parttime=4
if [ $(($RANDOM % 3 )) -eq 0 ]
then
        echo "fulltime employeewage" $(( WAGE * fulltime ))
elif  [ $(($RANDOM % 3 )) -eq 1 ]
then
        echo "parttime employee wage" $(( WAGE * parttime ))
else
        echo "employee absent"
fi




#!/bin/bash
WAGE=20
fulltime=1
parttime=2
absent=0
employeeattendance=$(( RANDOM % 3 ))
case $employeeattendance in
     $fulltime )
        workinghours=8;;
     $parttime )
        workinghours=4;;
     * )
        workinghours=0;;
esac
dailywage=$(($workinghours * $WAGE ))
echo "dailywage of employee" $dailywage



#!/bin/bash
WAGE=20
fulltime=8
parttime=4
absent=0
month=20
totaldays=0
fullwage=$((fulltime*WAGE))
halfwage=$((parttime*WAGE))
emptywage=$((absent*WAGE))
totalamount=0
while  [[ $totaldays -le $month ]]
do
        ((totaldays+=1))
    if [ $(( RANDOM % 3 )) -eq 0 ]
    then
        ((totalamount+=$fullwage))
    elif [ $(( RANDOM % 3 )) -eq 1 ]
    then
        ((totalamount+=$halfwage))
    else
        ((totalamount+=$emptywage))
    fi
done
echo $totalamount




#!/bin/bash
WAGE=20
fulltime=8
parttime=4
absent=0
month=20
TOTALHOURS=20
totaldays=0
totalhours=0
fullwage=$((fulltime*WAGE))
halfwage=$((parttime*WAGE))
emptywage=$((absent*WAGE))
totalamount=0
while  [[ $totaldays -lt $month && $totalhours -lt $TOTALHOURS ]]
do
          ((totaldays+=1))
        if [ $(( RANDOM % 3 )) -eq 0 ]
        then
          ((totalamount+=$fullwage))
        elif [ $(( RANDOM % 3 )) -eq 1 ]
        then
          ((totalamount+=$halfwage))
        else
          ((totalamount+=$emptywage))
        fi
done
echo $totalamount





#!/bin/bash
WAGE=20
fulltime=0
parttime=1
totaldays=0
totalhours=0
TOTALHOURS=100
MONTH=20
function hoursworked()
{
        employeeattendance=$(( $RANDOM % 3 ))
       case $employeeattendance in
            $fulltime )
               workinghours=8;;
            $parttime )
               workinghours=4;;
            * )
               workinghours=0;;
          esac
        echo $workinghours
}
while [[ $totaldays -lt $MONTH && $totalhours -lt $TOTALHOURS ]]
do
        ((totaldays++))
          employeehours="$( hoursworked )"
          dailywage=$(( $employeehours * $WAGE ))
        totalhours=$(( $totalhours + $employeehours ))
done
monthlywage=$(( $totalhours * $WAGE ))
echo " monthly_employee_wage= $monthlywage "





#!/bin/bash
WAGE=20
fulltime=0
parttime=1
totaldays=0
totalhours=0
TOTALHOURS=100
MONTH=20
declare -A dailywage
function hoursworked()
{
          employeeattendance=$(( $RANDOM % 3 ))
        case $employeeattendance in
             $fulltime )
                workinghours=8;;
             $parttime )
                workinghours=4;;
             * )
                workinghours=0;;
esac
echo $workinghours
}
while [[ $totaldays -lt $MONTH && $totalhours -lt $TOTALHOURS ]]
do
        ((totaldays++))
           employeehours="$( hoursworked )"
           dailywage[$totaldays]=$(( $employeehours * $WAGE ))
        totalhours=$(( $totalhours + $employeehours ))
done
monthlywage=$(( $totalhours * $WAGE ))
echo ${dailywage[@]}
echo " monthly_employee_wage= $monthlywage "




#!/bin/bash
WAGE=20
fulltime=0
parttime=1
totaldays=0
totalhours=0
TOTALHOURS=100
MONTH=20
declare -a dailywage
declare -a days
function hoursworked()
{
          employeeattendance=$(( $RANDOM % 3 ))
        case $employeeattendance in
             $fulltime )
                workinghours=8;;
             $parttime )
                workinghours=4;;
             * )
                workinghours=0;;
esac
echo $workinghours
}
while [[ $totaldays -lt $MONTH && $totalhours -lt $TOTALHOURS ]]
do
        ((totaldays++))
          employeehours="$( hoursworked )"
          dailywage[$totaldays]=$(( $employeehours * $WAGE ))
        totalhours=$(( $totalhours + $employeehours ))
done
monthlywage=$(( $totalhours * $WAGE ))
echo -e "days:\c"
echo ${dailywage[@]}
echo -e "totalwage:\c"
echo $monthlywage

