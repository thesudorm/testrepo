BODY=""
NEWLINE=$'\n'
FILE="./file.txt"

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
done < ./file.txt

echo -e $BODY > $FILE

#cat $FILE

mutt -s "I did my hourly coding challenge!" root@thesudorm.com < ./file.txt
mutt -s "I did my hourly coding challenge!" sophia@sophialouise.net < ./file.txt
mutt -s "I did my hourly coding challenge!" tom.errington217@gmail.com < ./file.txt

rm ./file.txt
