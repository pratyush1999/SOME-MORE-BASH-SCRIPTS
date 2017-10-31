#! /bin/bash
read a
f=1
n=`echo $a | wc -m`
for((k=1;k<$n;k++))
do
       	f=`expr $f \* $k` 
done


n=0
while [ $n -lt $f ]

do
     x=`echo "$a" | fold -w 1 | shuf | tr -d '\n'`

which $x > /dev/null 2>&1
b=`echo $?`

if [ $b -eq 0 ]
then
echo "yes"
$x --help
n=`expr $f + 50`
fi

n=`expr $n + 1`

if [ $n -eq $f ]
then
echo "no"
fi

done
