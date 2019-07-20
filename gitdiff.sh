# Try to get the diff information 

git diff HEAD~1 HEAD -U0 > file.txt

while read LINE
    do echo "$LINE" | cut -f1 -d":"
    #do echo "$LINE" 
done < ./file.txt
