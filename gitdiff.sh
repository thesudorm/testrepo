BODY=""
NEWLINE=$'\n'
count=0

git diff HEAD~1 HEAD -U0 > file.txt

while read LINE
do
    #If the line was added 
    #|| [[ ${LINE:0:1} == "-" ]] 
    if [[ ${LINE:0:1} == "+" ]] 
    then 
        parsed=${LINE:1}
        BODY="$BODY\n$parsed"
    fi
    let "count++"
done < ./file.txt

rm ./file.txt
echo -e $BODY
