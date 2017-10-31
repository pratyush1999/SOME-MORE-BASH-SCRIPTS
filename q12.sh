#! /bin/bash
read date1
month=`echo $date1|cut -d " " -f 1`
date=`echo $date1|cut -d " " -f 2|cut -d "," -f 1`
year=`echo $date1|cut -d " " -f 3`
a=0
if [ $month == january -o $month == jan ]
then
if [ $date -le 31 ]
then
	a=01
fi
fi
if [ $month == february -o $month == feb ]
then
if [ `expr $year % 4` -eq 0 ]
then 
x=29
else
	x=28
fi
if [ $date -le $x ]
then
        a=02
fi      
fi
if [ $month == march ]
then
      if [ $date -le 31 ]
then
        a=03
fi

fi

if [ $month == april ]
then
        if [ $date -le 30 ]
then
        a=04
fi

fi

if [ $month == may ]
then
       if [ $date -le 31 ]
then
        a=05
fi

fi

if [ $month == june ]
then
        if [ $date -le 30 ]
then
        a=06
fi

fi

if [ $month == july ]
then
        if [ $date -le 31 ]
then
        a=07
fi

fi

if [ $month == august ]
then
        if [ $date -le 31 ]
then
        a=08
fi

fi

if [ $month == september -o $month == sept ]
then
       if [ $date -le 30 ]
then
        a=09
fi

fi

if [ $month == october -o $month == oct ]
then
        if [ $date -le 31 ]
then
        a=10
fi

fi

if [ $month == november -o $month == nov ]
then
       if [ $date -le 30 ]
then
        a=11
fi

fi

if [ $month == december -o $month == dec ]
then
     if [ $date -le 31 ]
then
        a=12
fi

fi
if [ $a -ne 0 ]
then
echo $a/$date/$year
echo $date-$a-$year
else
	echo "Invalid"
fi
