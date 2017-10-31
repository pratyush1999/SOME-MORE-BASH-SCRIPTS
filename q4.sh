#! /bin/bash
d=`cat $1 | tr -s " " | cut -d " " -f 3`
i=`cat $1 | tr -s " " | cut -d " " -f 4`
year=`date +"%Y"`
crontab "$1" > /dev/null 2>&1
x=`echo $?`
if [ $x -ne 0 ]
then
	echo "no"
else

if [ "$i" == "jan" -o "$i" == "january" ]
then
i=1
a[i]=31
fi
if [ "$i" == "feb" -o "$i" == "february" ]
then
i=2
fi
if [ "$i" == "mar" -o "$i" == "march" ]
then
i=3
a[3]=31
fi
if [ "$i" == "apr" -o "$i" == "april" ]
then
i=4
a[4]=30
fi
if [ "$i" == "may" ]
then
i=5
a[i]=31
fi
if [ "$i" == "june" ]
then
i=6
a[i]=30
fi
if [ "$i" == "july" ]
then
i=7
a[i]=31
fi
if [ "$i" == "aug" -o "$i" == "august" ]
then    
i=8
a[i]=31
fi
if [ "$i" == "sept" -o "$i" == "september" ]
then    
i=9
a[i]=30
fi
if [ "$i" == "oct" -o "$i" == "october" ]
then    
i=10
a[i]=31
fi
if [ "$i" == "nov" -o "$i" == "november" ]
then
i=11
a[i]=30
fi
if [ "$i" == "dec" -o "$i" == "december" ]
then
i=12
a[i]=31
fi
a[1]=31
a[2]=28
a[3]=31
a[4]=30
a[5]=31
a[6]=30
a[7]=31
a[8]=31
a[9]=30
a[10]=31
a[11]=30
a[12]=31

if [ $i -gt 2 ]
then
	year=`expr $year + 1`
fi

year=`expr $year % 4`

if [ $year -eq 0 ]
then
a[2]=29
fi

if [ $d -gt ${a[i]} ]
then
echo "no"
else
echo "yes"
fi
fi
