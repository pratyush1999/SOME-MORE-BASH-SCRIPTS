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





