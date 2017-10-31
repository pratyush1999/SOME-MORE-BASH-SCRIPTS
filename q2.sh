
cat ~/.bash_history |sed "s/[^a-zA-Z]/ /g" |tr -s " "|cut -d " " -f 1| sort | uniq -c | sort -nr |tr -s " "|while read -r line;
do
	x=`echo $line|cut -d " " -f 2`
	 y=`echo $line|cut -d " " -f 1`
	which $x > /dev/null 2>&1
	h=`echo $?` 
	if [ $h -eq 0 ]
	then
	echo "$x	$y"
fi
done

