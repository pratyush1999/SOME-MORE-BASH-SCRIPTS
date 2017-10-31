#! /bin/bash
 touch q14.html
echo "<html>"  >>q14.html
echo "<body>"  >> q14.html
echo "<table border=1>"  >>q14.html
oIFS=$IFS
IFS=$'\n'
find ~  -mindepth 1 -type d | while read -r dir
do
echo "<tr color="red"> <th colspan=3> "$dir" </th> </tr>" >> q14.html

 echo "<tr"blue"> <th>name</th> <th>size</th> <th> file/dir </th> </tr>"  >> q14.html	

find "$dir" -maxdepth 1 -type f| while read -r file

do
 
	x=`ls -sh "$file"|tr -s " "|awk '{print $2}'|rev|cut -d "/" -f 1|rev`
     y=`ls -sh "$file"| tr -s " " | awk '{print $1}'`
    

 echo "<tr color="blue"><td> "$x" </td> <td> "$y" </td> <td> file </td> </tr>" >> q14.html
done
 
find "$dir" -mindepth 1 -maxdepth 1 -type d| while read -r dir2
do
 	x=`du -sh "$dir2"|tr -s " "|awk '{print $2}'|rev|cut -d "/" -f 1|rev`

   y=`du -sh "$dir2"| tr -s " " | awk '{print $1}'`

echo "<tr color="green"><td> "$x" </td> <td> "$y" </td> <td> dir </td> </tr> ">>q14.html
done

done
IFS=$oIFS
echo "</table>" >> q14.html
echo "</body>"  >> q14.html
echo "</html>"  >> q14.html

 firefox q14.html
