#! /bin/bash
 if [ "$1" == "write" ]
   then
	   y="$2,$3,$4"
     echo $y >> employee.txt 
        sort -n -k 1 --field-separator="," employee.txt -o employee.txt
  echo "done"
  fi

  if [ "$1" == "read" ]
  then

    grep $2 employee.txt

fi

if [ "$1" == "update" ]
then
x=`grep $2 employee.txt`  
y="$2,$3,$4"
sed -i "/"$x"/ c $y" employee.txt
echo "done"
fi

if [ "$1" == "delete" ]
then
	x=` grep $2 employee.txt`
	sed -i "/$x/d" employee.txt
	echo "done"
fi
  
if [ "$1" == "duplicate" ]
   then
sed -i 's/[[:space:]]*$//' employee.txt
 cat employee.txt | tr -s " " | sort -k 1 | uniq -d | uniq
    echo "done"
    fi 
x=-1
    if [ "$1" == "nthsalary" ]
then
	
	x=`sort -rn -k 3 --field-separator="," employee.txt | cut -d "," -f 3|cut -d " " -f 1 |uniq|head -n $2 | tail -n 1 | cut -d "," -f 3`
fi

 cat employee.txt | while read -r line
do
 y=` echo $line | cut -d "," -f 3`
  if [ $y -eq $x ]
  then
	  echo $line
  fi
  done







