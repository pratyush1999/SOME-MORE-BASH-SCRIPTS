#! /bin/bash
read operator
read n
read arg
x=$arg
n=`expr $n - 1`
for((i=0;i<n;i++))
do
	read arg
	x=`bc <<< "scale=4; $x$operator$arg"`	
done
echo $x


