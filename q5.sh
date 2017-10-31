#! /bin/bash
x=$1
y=$2
i=0
while [ $i -lt 7 ]
do
	if [ $# -gt 2 ]
	then
         a[i]=$3
         else
		 a[i]=${a[`expr $i - 1`]}
	 fi
	 i=`expr $i + 1`
shift
done

cat $x $y|sort -n -k${a[0]} -k${a[1]} -k${a[2]} -k${a[3]} -k${a[4]} -k${a[5]} -k${a[6]}
