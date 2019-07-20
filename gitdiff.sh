BODY=""
NEWLINE=$'\n'
count=0

git diff HEAD~1 HEAD -U0 > file.txt

while read LINE
do
    if [ $count -gt 4 ]
    then 
        BODY="$BODY\n$LINE"
    fi
    let "count++"
done < ./file.txt

rm ./file.txt
echo -e $BODY
