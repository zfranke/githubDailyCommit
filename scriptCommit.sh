#!/bin/bash
# A bash cronjob to change the fileChange.txt file to the current date and time. Then commit the changes to the repository.
#
# Usage:
#   scriptCommit.sh
#

#Create a random number generator between 1 and 10 
randomNumber=$((RANDOM%10+1))

#Echo the randomNumber to the screen
echo "Random number is: $randomNumber" > logs.txt

# For loop that will execute the given code for the random value
for (( i=0; i<$randomNumber; i++ )); do
    # Change the fileChange.txt file to the current date and time.
    echo "`date +%Y-%m-%d-%H-%M-%S`" > fileChange.txt

    # Commit the changes to the repository.
    git add . >> logs.txt
    git commit -m "`date +%Y-%m-%d-%H-%M-%S`" >> logs.txt
    git push origin main
done

#Do a final commit to ensure all changes are up, including for the logs
git add . >> logs.txt
git commit -m "`date +%Y-%m-%d-%H-%M-%S`" >> logs.txt
git push origin main


# Exit the script.
exit 0

