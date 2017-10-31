#! /bin/bash
read string1
string=${string1,,}
x=`echo $string|rev`
if [ $x == $string ]
then
	echo "yes"
else
	echo "no"
fi

