#! /bin/bash
var=$1
while [ $# -gt 1 ]
do
let var=$var**$2
shift 
done
echo $var
