#! /bin/bash
k=0
for i in `cat q15_url.txt`
do
        x[k]=$i
        k=`expr $k + 1`
done

wget --no-proxy -O q1.html ${x[0]} > /dev/null 2>&1
wget --no-proxy -O q2.html ${x[1]} > /dev/null 2>&1
cat q1.html q2.html > q3.html

k=0
for i in `sed 's/<[^>]*>//g' q3.html |sed 's/[^[:alnum:]]\+//g' |sed '/^\s*$/d'| tr ' ' '\n' | sort | uniq -ic | sort -r | awk '{print $2}' 
`
do
	a[k]="$i"
k=`expr $k + 1`
done
k=0
for i in `sed 's/<[^>]*>//g' q3.html|sed 's/[^[:alnum:]]\+//g' |sed '/^\s*$/d'| tr ' ' '\n' | sort | uniq -ic | sort -r | awk '{print $1}'
`
do
        b[k]="$i"
k=`expr $k + 1`
done
for((j=0;j<$k;j++))
do
	echo "${a[j]} ${b[j]}" >> q15_ans.txt
done
rm q1.html
rm q2.html
rm q3.html


 
