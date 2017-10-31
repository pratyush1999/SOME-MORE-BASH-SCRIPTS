#! /bin/bash
read x
c=`echo $x|tr -d ")" | tr -d "("`
echo '('$c')'
